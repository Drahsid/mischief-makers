#include <inttypes.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <ultra64.h>
#include <actor.h>

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80000400.s")

#ifdef NON_MATCHING
// I think this wipes the framebuffer
void Framebuffer_Clear(void) {
    int32_t temp_v1;
    uint32_t* temp_v0;
    uint32_t* phi_v0;
    int32_t phi_v1;

    osViBlack(1);
    phi_v0 = (void *)0x803DA800;
    phi_v1 = 0;
loop_1:
    temp_v1 = phi_v1 + 4;
    phi_v0[0x38] = 0;
    phi_v0[0x2E] = 0;
    phi_v0[0x24] = 0;
    phi_v0[0x5A] = 0;
    phi_v0[0x50] = 0;
    phi_v0[0x46] = 0;
    phi_v0[0x7C] = 0;
    phi_v0[0x72] = 0;
    phi_v0[0x68] = 0;
    phi_v0[0x3A] = 0;
    phi_v0[0x30] = 0;
    phi_v0[0x26] = 0;
    phi_v0[0x5C] = 0;
    phi_v0[0x52] = 0;
    phi_v0[0x48] = 0;
    phi_v0[0x7E] = 0;
    phi_v0[0x74] = 0;
    phi_v0[0x6A] = 0;
    phi_v0[0x60] = 0;
    phi_v0[0x3C] = 0;
    phi_v0[0x32] = 0;
    phi_v0[0x28] = 0;
    phi_v0[0x5E] = 0;
    phi_v0[0x54] = 0;
    phi_v0[0x4A] = 0;
    phi_v0[0x40] = 0;
    phi_v0[0x76] = 0;
    phi_v0[0x6C] = 0;
    phi_v0[0x62] = 0;
    phi_v0[0x3E] = 0;
    phi_v0[0x34] = 0;
    phi_v0[0x2A] = 0;
    phi_v0[0x20] = 0;
    phi_v0[0x56] = 0;
    phi_v0[0x4C] = 0;
    phi_v0[0x42] = 0;
    phi_v0[0x78] = 0;
    phi_v0[0x6E] = 0;
    phi_v0[0x64] = 0;
    phi_v0[0x36] = 0;
    phi_v0[0x2C] = 0;
    phi_v0[0x22] = 0;
    phi_v0[0x58] = 0;
    phi_v0[0x4E] = 0;
    phi_v0[0x44] = 0;
    phi_v0[0x7A] = 0;
    phi_v0[0x70] = 0;
    phi_v0[0x66] = 0;
    phi_v0[0x3F] = 0x10001;
    phi_v0[0x3D] = 0x10001;
    phi_v0[0x3B] = 0x10001;
    phi_v0[0x39] = 0x10001;
    phi_v0[0x37] = 0x10001;
    phi_v0[0x35] = 0x10001;
    phi_v0[0x33] = 0x10001;
    phi_v0[0x31] = 0x10001;
    phi_v0[0x2F] = 0x10001;
    phi_v0[0x2D] = 0x10001;
    phi_v0[0x2B] = 0x10001;
    phi_v0[0x29] = 0x10001;
    phi_v0[0x27] = 0x10001;
    phi_v0[0x25] = 0x10001;
    phi_v0[0x23] = 0x10001;
    phi_v0[0x21] = 0x10001;
    phi_v0[0x5F] = 0x10001;
    phi_v0[0x5D] = 0x10001;
    phi_v0[0x5B] = 0x10001;
    phi_v0[0x59] = 0x10001;
    phi_v0[0x57] = 0x10001;
    phi_v0[0x55] = 0x10001;
    phi_v0[0x53] = 0x10001;
    phi_v0[0x51] = 0x10001;
    phi_v0[0x4F] = 0x10001;
    phi_v0[0x4D] = 0x10001;
    phi_v0[0x4B] = 0x10001;
    phi_v0[0x49] = 0x10001;
    phi_v0[0x47] = 0x10001;
    phi_v0[0x45] = 0x10001;
    phi_v0[0x43] = 0x10001;
    phi_v0[0x41] = 0x10001;
    phi_v0[0x7F] = 0x10001;
    phi_v0[0x7D] = 0x10001;
    phi_v0[0x7B] = 0x10001;
    phi_v0[0x79] = 0x10001;
    phi_v0[0x77] = 0x10001;
    phi_v0[0x75] = 0x10001;
    phi_v0[0x73] = 0x10001;
    phi_v0[0x71] = 0x10001;
    phi_v0[0x6F] = 0x10001;
    phi_v0[0x6D] = 0x10001;
    phi_v0[0x6B] = 0x10001;
    phi_v0[0x69] = 0x10001;
    phi_v0[0x67] = 0x10001;
    phi_v0[0x65] = 0x10001;
    phi_v0[0x63] = 0x10001;
    phi_v0[0x61] = 0x10001;
    temp_v0 = phi_v0 + 0x200;
    temp_v0[-0x6A] = 0;
    temp_v0[-0x74] = 0;
    temp_v0[-0x7E] = 0;
    temp_v0[-0x68] = 0;
    temp_v0[-0x72] = 0;
    temp_v0[-0x7C] = 0;
    temp_v0[-0x66] = 0;
    temp_v0[-0x70] = 0;
    temp_v0[-0x7A] = 0;
    temp_v0[-0x64] = 0;
    temp_v0[-0x6E] = 0;
    temp_v0[-0x78] = 0;
    temp_v0[-0x62] = 0;
    temp_v0[-0x6C] = 0;
    temp_v0[-0x76] = 0;
    temp_v0[-0x80] = 0;
    temp_v0[-0x61] = 0x10001;
    temp_v0[-0x63] = 0x10001;
    temp_v0[-0x65] = 0x10001;
    temp_v0[-0x67] = 0x10001;
    temp_v0[-0x69] = 0x10001;
    temp_v0[-0x6B] = 0x10001;
    temp_v0[-0x6D] = 0x10001;
    temp_v0[-0x6F] = 0x10001;
    temp_v0[-0x71] = 0x10001;
    temp_v0[-0x73] = 0x10001;
    temp_v0[-0x75] = 0x10001;
    temp_v0[-0x77] = 0x10001;
    temp_v0[-0x79] = 0x10001;
    temp_v0[-0x7B] = 0x10001;
    temp_v0[-0x7D] = 0x10001;
    temp_v0[-0x7F] = 0x10001;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0x4B0) {
        goto loop_1;
    }
    osViSwapBuffer((void*)0x803DA800);
    osViBlack(0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80000450.s")
#endif

void mainproc(int32_t arg0) {
    osInitialize();
    osCreateThread(&D_8012A698, 1, &func_80000718, 0, &D_80126670, 0xA);
    osStartThread(&D_8012A698);
}

#ifdef NON_MATCHING
// Need to figure out the structures in the loop
void func_80000718(int32_t arg0) {
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
    if (D_80000300 == 2) {
        func_80099C20(&D_800EA110); // osViSetMode ?
        Framebuffer_Clear();
        phi_t0 = (uint32_t)&D_800EA110;
        phi_t7 = (uint32_t)&D_8012AD10;
loop_2:
        temp_t0 = phi_t0 + 0xC;
        *((uint32_t*)phi_t7) = *((uint32_t*)phi_t0);
        temp_t7 = phi_t7 + 0xC;
        *((uint32_t*)temp_t7 - 8) = *((uint32_t*)temp_t0 - 8);
        *((uint32_t*)temp_t7 - 4) = *((uint32_t*)temp_t0 - 4);
        phi_t0 = temp_t0;
        phi_t7 = temp_t7;
        if (temp_t0 != (&D_800EA110 + 0x48)) {
            goto loop_2;
        }
        *((uint32_t*)temp_t7 + 0) = *((uint32_t*)temp_t0 + 0);
        *((uint32_t*)temp_t7 + 4) = *((uint32_t*)temp_t0 + 4);
        phi_v0 = &D_800EA110;
    } else {
        func_80099C20(&D_800E9850);
        Framebuffer_Clear();
        phi_t5 = (uint32_t)&D_800E9850;
        phi_t1 = (uint32_t)&D_8012AD10;
loop_5:
        temp_t5 = phi_t5 + 0xC;
        *((uint32_t*)phi_t1) = *((uint32_t*)phi_t5);
        temp_t1 = phi_t1 + 0xC;
        *((uint32_t*)temp_t1 - 8) = *((uint32_t*)temp_t5 - 8);
        *((uint32_t*)temp_t1 - 4) = *((uint32_t*)temp_t5 - 4);
        phi_t5 = temp_t5;
        phi_t1 = temp_t1;
        if (temp_t5 != (uint32_t)(&D_800E9850 + 0x48)) {
            goto loop_5;
        }
        *((uint32_t*)temp_t1 + 0) = *((uint32_t*)temp_t5 + 0);
        *((uint32_t*)temp_t1 + 4) = *((uint32_t*)temp_t5 + 4);
        phi_v0 = &D_800E9850;
    }
    D_8012AD08 = phi_v0;
    func_80099CF0(0x96, &D_8012AC38, &D_8012A678, 8); // osCreatePiManager ?
    osCreateThread(&D_8012A9F8, 0, &func_8009A2B8, 0, &D_80129670, 0xFA); // This is from libultra!
    osStartThread(&D_8012A9F8);
    osCreateThread(&D_8012A848, 3, &func_80000C20, arg0, &D_80128670, 0xA);
    osStartThread(&D_8012A848);
    osSetThreadPri(0, 0);

    while (1) {}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80000718.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800008E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80000A84.s")

#ifdef NON_MATCHING
void func_80000C20(int32_t arg0) {
    uint16_t temp_t9;
    UNK_POINTER phi_s2;

    func_80001B38();
    osCreateMesgQueue(&D_8012ABA8, &D_8012AC68, 1);
    osCreateMesgQueue(&D_8012ABD8, &D_8012AC70, 1);
    func_8009A6F0(4, &D_8012ABD8, D_8012AC80);
    func_800020BC();
    osCreateMesgQueue(&D_8012ABF0, &D_8012AC74, 1);
    func_8009A6F0(9, &D_8012ABF0, D_8012AC80);
    osCreateMesgQueue(&D_8012ABC0, &D_8012AC6C, 1);
    func_8009A790(0xA); // osViSetSpecialFeatures ?
    func_8009A9B0(&D_8012ABC0, D_8012AC80, 1);
    func_800008E0();
    func_80022D10();
    func_80000A84(D_800BE700);
    *(uint32_t*)0x801370C0 = func_80001098();
    phi_s2 = 0x803DA800;
loop_1:
    func_8009AA80(&D_8012ADA0);
    func_8009AD10(&D_8012ADA0, 0, 1); // osRecvMesg ?
    func_8009AB58(&D_8012AD88);
    if (D_801370C0 != -1) {
        func_8009AA80(&D_8012AC08);
    }
    // setting up microcode?
    D_8012AC84->t.type = M_GFXTASK;
    D_8012AC84->t.flags = 0;
    D_8012AC84->t.ucode_boot = 0x800BA9E0;
    D_8012AC84->t.ucode_boot_size = (int32_t) (&D_800BAAB0 - 0x800BA9E0);
    D_8012AC84->t.ucode = &D_800BAAB0;
    D_8012AC84->t.ucode_data = &D_800EEA10; // below this reads "RSP SW Version: 2.0H"
    D_8012AC84->t.output_buff = 0;
    D_8012AC84->t.output_buff_size = 0;
    D_8012AC84->t.ucode_size = 0x1000;
    D_8012AC84->t.ucode_data_size = 0x800;
    D_8012AC84->t.dram_stack = &D_8011D970;
    D_8012AC84->t.dram_stack_size = 0x400;
    D_8012AC84->t.data_ptr = (int32_t) ((D_800BE700 * 0x6180) + 0x8012ADC0 + 0x180);
    D_8012AC84->t.data_size = (int32_t) (((int32_t) (((*(uint32_t*)(0x8012A670 - 0x8012ADC0)) + -(int32_t) (D_800BE700 * 0x6180)) - 0x180) >> 3) * 8);
    D_8012AC84->t.yield_data_ptr = &D_8011DDF0;
    D_8012AC84->t.yield_data_size = 0xDA0;
    func_8009AEA0(); // osWritebackDCacheAll ?
    func_8009B014(D_8012AC84); // osSpTaskLoad ?
    func_8009B294(D_8012AC84); // osSpTaskStartGo ?
    func_80002114();
    func_800028D0();
    temp_t9 = 1 - D_800BE700;
    D_800BE700 = temp_t9;
    func_80000A84(temp_t9 & 0xFFFF);
    func_8009AD10(&D_8012ABF0, 0, 1);
    func_800029EC();
    osViSwapBuffer(phi_s2);
    func_80010898();
    if (D_8012ABC0.validCount >= D_8012ABC0.msgCount) {
        func_80002114(&D_8012ABC0);
        func_800028D0();
        func_8009AD10(&D_8012ABC0, &D_8012AC80, 1);
        func_800029EC();
    }
    func_8009AD10(&D_8012ABC0, &D_8012AC80, 1);
    phi_s2 = 0x803DA800;
    if (D_800BE700 != 0) {
        phi_s2 = 0x801DA800;
    }
    func_80000FE0();
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80000C20.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80000FE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80001098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800011F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80001264.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80001290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800012F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000147C.s")

#ifdef NON_MATCHING
// besides regalloc, I believe this is functionally the same
// not sure how to put the rodata for the jump table at the right spot though
void func_80001670(void) {
    uint16_t temp_t6;

    temp_t6 = gGameState;
    if ((uint32_t)temp_t6 < 0xF) {
        // case for gamestate
        switch(temp_t6) {
            case 0:
                func_80022F48(); // soft reset
                break;
            case 1:
                func_80017800(); // intro update
                break;
            case 2:
                func_8001817C(); // title screen update
                break;
            case 3:
                func_800188CC(); // sound test update
                break;
            case 4:
                func_800191B8(); // stage select (debug) update
                break;
            case 5:
                func_800232A4(); // stage loading (?) update
                break;
            case 6:
                func_80021034(); // normal (gameplay) update
                break;
            case 7:
                func_80012F98(); // gameover update
                break;
            case 8:
                func_80388000(); // unknown gamestate
                break;
            case 9:
                func_80388008(); // unknown gamestate
                break;
            case 10:
                func_80021270(); // gameplay demo update
                break;
            case 11:
                func_80007C8C(); // file select update
                break;
            case 12:
                func_8001B460(); // transition update
                break;
            case 13:
                func_8001D654(); // stage select best times (?) update
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80001670.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000178C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800017D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80001988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80001A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80001B38.s")

void func_800020BC(void) {
    osCreateMesgQueue(&D_801377D0, &D_801378C0, 1);
    func_8009A6F0(4, &D_801377D0, 0);
    func_8009E2F0(&D_801377D0, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80002114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800028D0.s")

#ifdef NON_MATCHING
void func_800029EC(void) {
    func_8009AEA0();
    func_8009B014(D_8016E6F0);
    func_8009B294(D_8016E6F0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800029EC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80002A2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80002AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80002B50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80002F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800032C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000334C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800033B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800033F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800034B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800034FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800035F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800036C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003778.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003828.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800038C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003980.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800039B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003A10.s")

#ifdef NON_MATCHING
// instruction ordering is wrong, and for some reason this shifts code by 4 bytes?
void func_80003A38(void) {
    func_8009FF40(D_8016DFE4);
    D_800EF4D0 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003A38.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003D64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80003F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800040A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800045F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800046FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004738.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000474C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000477C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800047B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004804.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004910.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80004FFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800050B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80005188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000565C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80005770.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80005828.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80005860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800058E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800059A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80005B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80005C3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000607C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80006360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80006B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80006B9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80006CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80006DF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80006E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80006EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800072A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800073CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80007578.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800075A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800076F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800078A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80007A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80007ABC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80007BC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80007C8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80009940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80009BE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80009BE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000DD6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000EA88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000F290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8000FBF4.s")

#ifdef NON_MATCHING
void func_80010898(void) {
    D_801780F0 = &D_8012ADC0;
    D_801780F4 = &D_80130F40;
    // need to get these Mtx pointers correctly
    guLookAt(D_801780F0 + 0x3000, gEyeX, gEyeY, gEyeZ, gAtX, gAtY, gAtZ, gUpX, gUpY, gUpZ);
    guLookAt(D_801780F4 + 0x3000, gEyeX, gEyeY, gEyeZ, gAtX, gAtY, gAtZ, gUpX, gUpY, gUpZ);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80010898.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800109B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80010A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80010C20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001107C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800119AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80011A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80011A9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80011B30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80011C58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80011D6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80011DA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80011DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80011E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80011F44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800120C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800121D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800122B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800123AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012634.s")

#ifdef NON_MATCHING
void func_80012830(void) {
    // It is lh then lw the same values ?
    D_800BE560 = (int16_t)D_800BE558;
    D_800BE560 = (int32_t)D_800BE558;
    if (D_800BE62C != 0) {
        func_800123AC();
    } else {
        func_80012438();
    }
    D_800BE564 = (int16_t)D_800BE55C;
    D_800BE564 = (int32_t)D_800BE55C;
    if (D_800BE630 != 0) {
        func_80012418();
        return;
    }
    func_80012634();
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012830.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800128E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800128F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800129C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012A58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012B88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012C04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012C50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012CD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012DF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80012F98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80014AF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80014C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80014F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80014FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80015094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800150FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80015174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800151D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80015250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800152C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80015330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800153A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80015418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80015490.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800154F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001556C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800155E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001564C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800156C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80015B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800160EC.s")

#ifdef NON_MATCHING
/* Differences are regalloc and instruction order
 * Additionally, my code is generating nops below lw?
 * This function iterates over all of the actors, and updates the collision for active actors
*/
void func_80016CB4(void) {
    Actor* actor;
    int32_t index;

    if ((D_80137458 & 0x10) == 0) {
        index = 0;
        // I am sure this is supposed to be a for loop, but my testing was unsuccessful
        do {
            actor = &gActors[index];
            if (Actor_Active_Get(actor) != 0) {
                func_800160EC(index); // update collision
                actor->unk_0x98 &= 0xFFF7FFFF;
            }

            index = (index + 1) & 0xFFFF;
        } while (index < ACTOR_COUNT1);

        D_800BE5D8 = (int32_t)(PlayerActor.pos_x + D_800BE558);
        D_800BE5DC = (int32_t)(PlayerActor.pos_y + D_800BE55C);
    }
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80016CB4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80016D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80016E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001751C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80017680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800176F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80017770.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80017800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80017F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80017FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001809C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800180FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001817C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800188CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80018E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800191B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80019520.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80019688.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800197A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001983C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800198B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800199DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80019A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80019E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80019EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80019F04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80019FB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001A15C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001A254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001A584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001A758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001A7E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001A838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001A890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001A96C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001ACA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B004.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B02C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B1A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B1F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B23C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B244.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B2F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B3D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001B460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001C7A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001C7F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001C834.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001C8B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001C97C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001CA68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001CAA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001CB6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001CC34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001CC8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001CD30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001CE04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001CF14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001CFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001D040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001D0A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001D240.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001D5B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001D60C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001D654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001DBA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001DC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001DE30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001E2D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001E5E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001E6F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001E808.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001E814.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001E8E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001E964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001E9DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001EADC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001EB8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001EC1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001F88C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001FA78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001FCA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001FEB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001FF28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001FF30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001FF50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001FFA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8001FFA8.s")

#ifdef NON_MATCHING
/* Update function for main gamestate when not paused
 * A lot of regalloc differences
 * Code relatively different
*/
uint16_t func_80020024(void) {
    int16_t* temp_s1;
    uint16_t temp_a0;
    uint16_t temp_t2;
    uint16_t temp_t5;
    uint16_t temp_v0;
    uint16_t temp_v0_2;
    int32_t phi_v1;
    uint8_t* phi_s2;
    int32_t phi_s0;
    uint16_t* phi_s3;
    int32_t phi_s4;
    int16_t* phi_s1;
    uint16_t phi_return;

    D_800BE4E0 = (uint16_t)(D_800BE4E0 + 1);
    D_801782B8 = (uint16_t)(D_801782B8 + 1);
    if (((int32_t) D_801781E0 < 0x8CA0) && ((int32_t)D_800D28E8 >= 2) && (func_8005DEFC() == 0) && ((int32_t)D_800D28E4 < 0x61)) {
        D_801781E0 = (uint16_t)(D_801781E0 + 1);
    }
    func_800122B0();
    if ((D_800BE6AC & 2) != 0) {
        temp_a0 = D_800BE4FC;
        if ((temp_a0 & D_800BE530) != 0) {
            temp_v0_2 = D_800BE6B4;
            if (temp_v0_2 != 1) {
                D_800BE6B4 = (uint16_t)(temp_v0_2 - 1);
                D_801781DC = (uint16_t)0U;
            }
        }
        temp_v0 = D_800BE6B4;
        phi_v1 = (int32_t)temp_v0;
        if ((temp_a0 & D_800BE534) != 0) {
            phi_v1 = (int32_t)temp_v0;
            if (temp_v0 != 0x32) {
                temp_t2 = temp_v0 + 1;
                D_800BE6B4 = temp_t2;
                D_801781DC = (uint16_t)0U;
                phi_v1 = temp_t2 & 0xFFFF;
            }
        }
        if (((int32_t)D_800BE4E4 % phi_v1) != 0) {
            D_801781DC = (uint16_t) (D_801781DC | temp_a0);
            return temp_v0;
        }
        temp_t5 = D_801781DC;
        D_801781DC = (uint16_t)0U;
        D_800BE4FC = (uint16_t) (temp_a0 | temp_t5);
    }
    func_800253B0();
    func_8001F88C();
    func_80014AF0();
    func_80016CB4();
    func_80012830();
    func_80016D94();
    func_8001EC1C();
    func_8001107C();
    if (D_800CA230 == 0) {
        func_8004ED10(0);
        func_8008C528(0x41);
    }
    func_8001FF30();
    func_8001DE30();
    func_8008CA90();
    func_8001751C();
    func_80014C44();
    func_8005C8A4();
    func_8001FF50();
    func_8005F6D4();
    func_80022470();
    if (gGameState == 6) {
        func_80047CCC();
    }
    phi_return = func_80047C98();
    if ((D_800BE6AC & 0x4000) != 0) {
        phi_s2 = &D_800EF4F0;
        phi_s0 = 0x3C;
        phi_s3 = &D_800EF508;
        phi_s4 = 0x30;
        phi_s1 = &D_800EF4F8;
loop_21:
        func_80083C54(*phi_s2, -0x90, phi_s0);
        func_80083A74(*phi_s3 - 0x21, -0x90, phi_s4);
        temp_s1 = phi_s1 + 2;
        phi_s2 += 1;
        phi_s0 += -0x20;
        phi_s3 += 2;
        phi_s4 += -0x20;
        phi_s1 = temp_s1;
        phi_return = func_80083C54((uint8_t)*phi_s1, -0x68, phi_s0);
        if ((uint32_t)temp_s1 != (uint32_t)&D_800EF500) {
            goto loop_21;
        }
    }
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80020024.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002034C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800205DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800207DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80020844.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800208D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002092C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80020A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80020A90.s")

#ifdef NON_MATCHING
// The only difference here is regalloc
void func_80021034(void) {
    uint32_t sp1C;

    sp1C = (uint32_t)func_800A5720(); // osGetTime?
    func_800457C8();
    D_801374DC = (int32_t)((uint32_t)func_800A5720() - sp1C); // time - lastTime ?
    // if game paused ?
    if (D_800BE4E8 != 0) {
        func_80020A90();
        return;
    }
    func_80020024();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80021034.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80021098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80021270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80021620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80021658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80021660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80021668.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002167C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80021690.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002170C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800218FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80022470.s")

#ifdef NON_MATCHING
void func_80022D10(void) {
    func_80043478();
    D_800BE668 = (uint16_t)0x32;
    D_800BE6E4 = (uint8_t)0;
    D_800BE6E8 = (uint8_t)0;
    D_800BE6EC = (uint8_t)0;
    D_800BE514 = (uint16_t)0x4000;
    D_800BE518 = (uint16_t)0x8000;
    D_800BE700 = (uint16_t)0;
    D_800CA238 = (uint16_t)0;
    gGameState = (uint16_t)0; // nonmatching, instructions are in a flipped order?
    gGameSubState = (uint16_t)0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80022D10.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80022D88.s")

#ifdef NON_MATCHING
// I had this matching, but something I changed made it not match
// This function is called when the user soft-resets the game
uint16_t func_80022F48(void) {
    uint16_t temp_ret;
    uint16_t temp_v0;

    temp_v0 = gGameSubState;
    if (temp_v0 == 0) {
        // disables every actor
        func_800230B8();
        func_8002312C();
        temp_ret = func_80023168();
        gGameSubState = (uint16_t)(gGameSubState + 1);
        return temp_ret;
    }
    if (temp_v0 != 1) {
        return temp_v0;
    }
    func_80022D88();
    func_80025E6C();
    func_80004FFC(0);
    func_80004FFC(1);
    func_800050B4();
    // reset controller bindings
    D_800BE500 = (uint16_t)0x1000; // start
    D_800BE504 = (uint16_t)0x800; // up
    D_800BE508 = (uint16_t)0x400; // down
    D_800BE50C = (uint16_t)0x200; // left
    D_800BE510 = (uint16_t)0x100; // right
    D_800BE514 = (uint16_t)0x4000; // b
    D_800BE518 = (uint16_t)0x8000; // a
    D_800BE51C = (uint16_t)2; // r (?)
    D_800BE520 = (uint16_t)4; // cl
    D_800BE524 = (uint16_t)8; // cd
    D_800BE528 = (uint16_t)1U; // cu
    D_800BE52C = (uint16_t)0x2000; // cr
    D_800BE530 = (uint16_t)0x20; // z
    D_800BE534 = (uint16_t)0x10; // l
    D_801781F8 = (uint16_t)0;
    D_800CBF44 = (uint16_t)0;
    // sets Marina's health to 1000
    D_800EF5F0 = (uint16_t)1000;
    D_80178136 = (uint16_t)0x1E;
    gGameState = 1;
    gGameSubState = (uint16_t)0U;
    return (uint16_t)1U;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80022F48.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800230B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002312C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023168.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800232A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800235E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800235F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023668.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800236A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023798.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800237F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023968.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023A08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023A34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023AA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023ACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023AFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023BC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023BF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023C18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023D48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023D70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023D98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023DB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023DF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023E14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023E40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023E6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023E74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023E98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023EB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80023F5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024004.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024074.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800240E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800244F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800245AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800245B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800245F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800245F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024668.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002488C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800249B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024D5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024D6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024DA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80024EA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025084.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002508C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002515C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025184.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800251CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800251E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800252BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800252F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800253A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800253B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025578.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800255B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025B7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025BFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025C38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025E6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80025F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002601C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800260C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026220.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026494.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002653C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800265FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026694.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002670C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026784.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800267FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002694C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026B04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026BD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026C9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80026F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800270E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800271B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002729C.s")

#ifdef NON_MATCHING
/* The Actor* version seems to produce closer to matching code
 * Differences are regalloc, and instruction order
*/
void func_80027370(uint32_t actorIndex, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    Actor* actor;

    actorIndex &= 0xFFFF;

    actor = &gActors[actorIndex];
    actor->unk_0xD2 = (uint16_t)0;
    func_8001E2D0(actorIndex);
    actor->unk_0x94 = (uint16_t)(actor->unk_0x94 | 0x800);
    actor->unk_0x188 = 0;
    actor->pos_x = pos_x;
    actor->pos_y = pos_y;
    actor->pos_z = pos_z;
    //return actor;

    //gActors[index].unk_0xD2 = (uint16_t)0;
    //func_8001E2D0(index);
    //gActors[index].unk_0x94 = (uint16_t)(gActors[index].unk_0x94 | 0x800);
    //gActors[index].unk_0x188 = 0;
    //gActors[index].pos_x = pos_x;
    //gActors[index].pos_y = pos_y;
    //gActors[index].pos_z = pos_z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027370.s")
#endif

#ifdef NON_MATCHING
/* need to match instruction ordering
 * the jal to func_800273FC has a nop in the delay slot,
 * does this impliy whatever file this is from was buit with optimizations off?
*/
void func_800273FC(uint16_t actorIndex, uint16_t arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    func_80027370(actorIndex, pos_x, pos_y, pos_z);
    gActors[actorIndex].unk_0x84 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800273FC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027588.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800276DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800278E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027A44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027A88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027AC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027C40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80027D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002801C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028150.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800282F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800283BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800284B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800284B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002854C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800285E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002865C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800286A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800286C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002877C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002884C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800288EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028980.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800289CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800289E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028AE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028C08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028C80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028DAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80028E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800291AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800294E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800295D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029798.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002981C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800298D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002995C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800299B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029B74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029BB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029CC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029D58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029F00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80029FB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A090.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A0C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A118.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A170.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A404.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A464.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A4C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A4FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A57C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002A990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002AA20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002ABE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002AC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002AC7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002ACFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002AD7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002AE44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002AEB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002AEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002AF7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B1D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B25C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B2D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B400.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B6E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B7B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B7F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B82C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B8F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002B9D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002BACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002BB04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002BC10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002BC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C1D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C1E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C3C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C5C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C6DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002C6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002CCD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002D040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002D260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002D2F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002D3C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002D488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002D5E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002D670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002D904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002DB0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002DC74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002DFC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002E288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002E500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002E89C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002EBB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002ECAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002ED34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002EDC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002EFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002F154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002F1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002F2A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002F420.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002F6AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002F6D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002F93C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002FC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002FD48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8002FEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800303A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800309C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030A74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030B0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030B84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80030F94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800310A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003119C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800311EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003123C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80031284.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800312CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80031324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003137C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800313CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003141C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80031CAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80031D58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80031DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80031E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800320F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800327B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80032900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80032E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800330A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80033204.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800333A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80033428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003358C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800335E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800336B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800337F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800338F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80033948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800339AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800339BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80033B54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80033CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80033DE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80033E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800340CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80034644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003480C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800348E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800349C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80034A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80034D14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80034D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80034E10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003510C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800351C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003526C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800352C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800358CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800358DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035D34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80035E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800366E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800367D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800369A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80036A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80036B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80036C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80036CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80036DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003707C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800370AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800374D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003766C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80037B18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80037B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80038398.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800384FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80038600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80038704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80038794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80038868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80038C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80038D1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80038E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80038FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800390BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003929C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800398F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039ADC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80039E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003A120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003A958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003A9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003AA18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003AB24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003AC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003B630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003B8CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003BE3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003D518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003D5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003D628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003D68C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003D794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003DBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003DF78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003E230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003E52C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003E640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003E6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003E854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003EAE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003EC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003EDF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003EEC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003EF98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003F05C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003F138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003F248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003F360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003F6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003F7A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003F8B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003F9CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003F9E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003FB20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003FD0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003FE4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003FE90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003FED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003FF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8003FF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80040098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004023C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800404AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80040564.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800405C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800406A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800407D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80040858.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004089C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800409E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80040A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80040AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80040B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80040E08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80041018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004151C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004168C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004172C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004178C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004185C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800418A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042308.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800423A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800427E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042864.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800429A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042AEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042B2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042CE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042E28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042E84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80042F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004320C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80043234.s")

void func_80043478(void) {
    func_8002B82C(&D_800DD47C, &D_800DD47C, 0xFF, 4, 2, 2);
    func_8002B82C(&D_800DD67C, &D_800DD67C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DD87C, &D_800DD87C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DCC7C, &D_800DCC7C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DC67C, &D_800DC67C, 0xFF, 2, 4, 2);
    func_8002B82C(&D_800DC27C, &D_800DC27C, 0xFF, 2, 2, 4);
    func_8002B82C(&D_800DC47C, &D_800DC47C, 0xFF, 4, 2, 2);
    func_8002B82C(&D_800DC87C, &D_800DC87C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DCA7C, &D_800DCA7C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DC07C, &D_800DC07C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DB07C, &D_800DB07C, 0xFF, 7, 2, 2);
    func_8002B82C(&D_800DB27C, &D_800DB27C, 0xFF, 7, 2, 2);
    func_8002B82C(&D_800DB47C, &D_800DB47C, 0xFF, 1, 1, 1);
    func_8002B82C(&D_800DB67C, &D_800DB67C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DB87C, &D_800DB87C, 0xFF, 1, 2, 5);
    func_8002B82C(&D_800DBA7C, &D_800DBA7C, 0xFF, 3, 2, 3);
    func_8002B82C(&D_800DBC7C, &D_800DBC7C, 0xFF, 4, 3, 2);
    func_8002B82C(&D_800DFE48, &D_800DFE48, 0xFF, 2, 6, 2);
    func_8002B82C(&D_800E0248, &D_800E0248, 0xFF, 8, 2, 2);
    func_8002B82C(&D_800E0448, &D_800E0448, 0xFF, 3, 3, 7);
    func_8002B82C(&D_800E0048, &D_800E0048, 0xFF, 3, 3, 3);
    func_8002B82C(&D_800DFA48, &D_800DFA48, 0xE0, 2, 6, 2);
    func_8002B82C(&D_800DFC48, &D_800DFC48, 0xE0, 8, 2, 2);
    func_8002B82C(&D_800DF848, &D_800DF848, 0xE0, 4, 2, 4);
    func_8002B82C(&D_800D9B7C, &D_800D9B7C, 0x7A, 1, 4, 1);
    func_8002B82C(&D_800D9E7C, &D_800D9E7C, 0x7A, 4, -1, 1);
    func_8002B82C(&D_800D9C7C, &D_800D9C7C, 0x7A, 1, 1, 3);
    func_8002B82C(&D_800D9F7C, &D_800D9F7C, 0x7A, 1, 1, 1);
    func_8002B82C(&D_800D9D7C, &D_800D9D7C, 0x7A, 1, 2, 3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80043918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004398C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80043A68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80043C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80043D04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80043D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80043D6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80043E64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004400C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800441F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044390.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044618.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800446F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800447AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004495C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800449A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044A84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044B7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044BD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044C34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044C90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044CEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044D48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044DA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044E34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044F0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044F9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80044FE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004502C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045074.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800450D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004512C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800451E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045544.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800456DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004571C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800457C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004586C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80045FA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046148.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046274.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800462F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800463C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800463F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046434.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800465F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004664C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800467EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046A30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046A9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046D5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046E6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80046EBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800472D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004732C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004735C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047410.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800475EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047674.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004767C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047C28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047C98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047CCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047E30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047ED4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80047FF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800480B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048238.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800483B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048408.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800485AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800486F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048BB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048C28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80048F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80049040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800490BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800491B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80049300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80049460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80049660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80049A04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80049AC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004A8E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004A918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004A960.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004AA64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004AB3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004B0A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004B18C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004B290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004B344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004B878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004BB08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004BEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004C5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004CE1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004D140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004D6CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004D7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004DA6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004DC44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004E1D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004E1DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004E1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004E4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004E6FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004EAE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004EC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004ED10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004F2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004F35C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004F514.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004F5B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004F614.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004F7D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004FB30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004FC68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8004FDF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800500B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005060C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005074C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800508F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800509C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80050F3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80051324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80051C48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80052004.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80052780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005278C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800528F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80052A6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80052C4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80052CD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80053210.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80053358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800536CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005396C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80053B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80053DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80053F34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800541B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80054320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80054474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005457C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005498C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80054E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80054FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80055188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800551F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800553EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005544C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800554AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005552C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80055538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800558F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80055C2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80055F8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800562EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005664C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800569AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80056CCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80056F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005701C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80057268.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80057320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005739C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800574B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800575C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800576A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80057848.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80057C98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800584D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005878C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058924.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005896C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058C24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058CAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058D3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058E44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058EB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80058F9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800592A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800593DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80059624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80059ABC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80059D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80059F30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005A068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005A1A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005A320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005A4B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005A6D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005A7D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005A930.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005ACA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005ACB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005B164.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005B1E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005B3F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005B5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005B82C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005BA38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005BBC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005BCF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005BFA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C0CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C3C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C520.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C550.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C5E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C6D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C708.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C774.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005C8A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005CA34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005CA98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005CAA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D1B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D1E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D3D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D450.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D664.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D6A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D6DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D718.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D74C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D7F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D82C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D8D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D90C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D984.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005D9EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DA20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DA5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DA98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DB00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DB34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DB68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DB9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DC04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DC38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DC64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DC98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DCCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DD00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DD34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DD68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DD9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DDC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DDFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DE30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DEFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DF30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DF40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DF5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005DFC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005E09C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005E0B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005E1CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005E260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005E56C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005E8F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005EC20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005EE24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005F088.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8005F6D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800600F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800601FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006098C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80060DB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80060F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80060F88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800612D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80061350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80061450.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800614D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80061554.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800615BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80061624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80061E98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800623C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006242C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006275C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006291C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800629A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062A34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062AC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062CB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80062F84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800630E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800631A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80063258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006330C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800633C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80063418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006346C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80063FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800640A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800641CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80064328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800643CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80064528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800645F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006475C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800648C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80064AA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80064B60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80064CB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80064EB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80064F4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80065178.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80065218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80065270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80065650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80065724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800657B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800658D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80065A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80065B78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80065D60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80065F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006605C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800662F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006641C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80066644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800666B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006678C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800668E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80066964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80066A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80066BCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006756C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800679DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067B18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067E50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067E9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067EF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067F44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067F98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80067FEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800682AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800684D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068570.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800686CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800686D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068888.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800688C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800688E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006890C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800689A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800689F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068A30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068A68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068ACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068B54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068B80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068B8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068BE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068C48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068CA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068D18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068E08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80068FBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006907C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069130.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069204.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800692C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800692C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800692D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800692D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800692E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800692E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800692F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800692F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069304.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006930C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800695E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800696A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069814.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069BF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069C54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069CDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069D04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069DA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80069F10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006A06C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006A0B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006A214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006A384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006A4DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006A64C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006A724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006A7B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006A924.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006ABEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006AD50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006ADF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006AE84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006AF30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006B310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006B448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006B518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006B5B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006B648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006B940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006B9EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006BA80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006BAFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006BB8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006BC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006BD08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006BEF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C0F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C1A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C1AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C5A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C6F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C7B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C8B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C908.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006C9D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CA0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CAD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CB10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CB4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CB88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CC70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CD5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CE74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006CFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006D0EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006D160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006D3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006D65C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006D744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006D7F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006D884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006D914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006D9A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006DB10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006DB18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006DBE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006DCB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006DDF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006DF28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006E000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006E1F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006E3DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006E3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006E4EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006E9B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006EA3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006EAC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006F1FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006F5D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006F730.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006F850.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006F90C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006FA38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006FAC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006FB48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006FBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006FCC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006FD74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006FE28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006FED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8006FF70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007095C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070BEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80070F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80071028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800715DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800717E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80071A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80071CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800721C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800722F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072400.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800728E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072910.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072A28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072CC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072DD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072E54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072EE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80072FE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007325C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800732F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800733AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800734C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073558.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800735EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800737C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073E50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073EF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80073FD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007406C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800740C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800742B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800742FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800744AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800744E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80074654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80074804.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80074938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80074C30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80074D28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007502C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80075324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800753C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80075418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80075498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800755F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80075670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800756FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007574C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80075900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80075A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80075CD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80075D50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80075DC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80076228.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80076270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80076374.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80076414.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800764B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800768D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80076950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800769AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80076A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80076AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80076BF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80076D40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80077C18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80077D24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80077F58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80078190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80078214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80078338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80078418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800789C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80078CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80078F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80078F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80078FF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800791D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800792C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007951C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800798EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079984.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80079F50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A090.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A118.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A3CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A4B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A6A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A7C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A84C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007A8B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007AB44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007B60C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007B73C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007CCD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007CCE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007CD68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007CE24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007CEB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007CFE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D0DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D0F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D1E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D3EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D520.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D554.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007D880.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007DB84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007DF44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007EA14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007EE14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007EE70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007EF58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007F078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007F37C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007F560.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007F9E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007FCA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8007FF28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80080190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800801D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800805B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80080818.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800808D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80080AEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80080ED4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80080FF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008105C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800816AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800817D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800818C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800819A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081CBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081CD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081CFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081D08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081D20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80081FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80082024.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80082088.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80082184.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800821B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800822B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80082380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80082820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80082CFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80082E04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80082F10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008310C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800831D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083454.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800836A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008379C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800838E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008391C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083A04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083A74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083AE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083B5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083BD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083C54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083CCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083DB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083E74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80083FB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800840A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008412C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800842AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800843E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800844B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800846A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80084734.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008486C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800848A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80084924.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80084974.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80084D18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80084E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80084F38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085194.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800852CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800853C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085844.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008594C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800859C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085A4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085AE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085BAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085EB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80085F78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008603C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800860FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800862CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80086360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800865BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80086790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80086824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80086900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80086A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80086B74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80086C7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80087568.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80087698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80087820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80087B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80087BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80087D2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80087EAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088164.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800882E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088408.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008855C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800886E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800887B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800887F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088834.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088B08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80088E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80089084.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800891EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80089298.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80089418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800896AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80089814.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80089984.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80089A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80089EF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008A0F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008A32C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008A41C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008A50C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008A6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008AA28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008AB68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008AD3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008AE78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008AF04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008AFE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008B284.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008B438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008B548.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008B654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008B7CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008B830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008B9FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008BB64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008BC5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008BFB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008BFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C038.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C304.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C4A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C4A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C4B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C4C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C4C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C4D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008C710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008CA90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008CC00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008CC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008CDC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008CF10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008CF60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008CFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D0A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D128.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D1E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D39C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D728.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D730.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D960.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008D99C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008DA24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008DA4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008DC70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008DCE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008DE20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008DE28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008DE30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008DEBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008DF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008E1A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008E310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008E3C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008E480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008E790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008E918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008E948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008EA4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008EB44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008EBF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008ECDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008EDB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008EEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008EFA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008F094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008F108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008F168.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008F220.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008F294.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008F2E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008F498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008F734.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008F7E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008FA50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008FB20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8008FD08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80090064.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800902B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80090558.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800907E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80090A88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80090BFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80090CDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80090F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80091158.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800911D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80091300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800913C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80091524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009159C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80091664.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800918D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800919C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80091BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80091C90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80091D28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80092028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80092114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800922D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800923C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800924F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800925D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80092660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800929B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80092E30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80092F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80092FD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800930AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800930E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800930EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800931CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80093274.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009333C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80093410.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009349C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009351C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800935B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80093654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80093704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80093C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80093D38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80094C5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80094CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80094D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80094E10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80094EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80094F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80094FE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800955F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80095928.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80095A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80095A8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80095FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096058.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800962C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009672C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009685C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800968EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009691C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800969CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800969F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800969FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096A04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096A70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096B18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096B70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80096E14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009705C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80097108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800971A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009723C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800972DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80097384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80097428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80097574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800977B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80097968.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80097A74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80098B50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80098DF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80098E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80098F50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80099460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80099468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80099470.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80099620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800997C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800999C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80099C20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80099CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_80099F1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A0CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A17C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A2B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A590.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A6F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009A9B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009AA80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009AB58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009AC14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009AD10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009AEA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009AED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009B014.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009B294.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009B2E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009B4F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009B5DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009B6E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009B790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009B9D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BA20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BA74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BAB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BAE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BAEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BB24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BB30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BC80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BCE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BD44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BE34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009BF4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009C010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009C0B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009C140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009C150.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009C420.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009C6AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009CED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009CF78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009D094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009DE40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009E108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009E230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009E2A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009E2F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009E480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009E4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009E540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009E938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009EBA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009EC00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009EC34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009EC98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009ECD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009ED40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009ED84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009EE70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009EE78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009EE80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009EE90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F01C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F1AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F6D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F748.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F750.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009F9AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009FA60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009FB14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009FD08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009FDA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009FDF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009FE30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009FF40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009FF80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_8009FFF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A0060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A006C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A0074.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A0084.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A008C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A00B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A00BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A295C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A2B7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4170.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A41A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A41B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A41D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A41E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A42BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4308.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4354.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4390.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A43DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A44F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A45AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A45F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A47C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4910.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4B9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4D74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4DF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4E4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A4EA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A50B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5110.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A517C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A51D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A55B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A56BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A57F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A58FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5B34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5C30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5C88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5CD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5EB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5ED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5EF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5F00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A5F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6B9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6BE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6D90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6DB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6DC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6E80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6F10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A6F90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7150.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7210.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A72F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A72F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A75B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A763C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7828.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7840.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A784C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7BE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7BF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7E20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7E78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A7F00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A80E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8C60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8CC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8DA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8DB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8E10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8EA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8F04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A8F88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9170.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A91D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9210.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A924C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A94BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A97A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A97C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A987C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9BC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9CEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9EF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800A9F0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA07C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA304.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA3B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA48C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA4D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA5D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA64C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA684.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA840.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA8E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AA920.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AAA10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AAD70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AAD80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AAD90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AADD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AAF00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AAF40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AB050.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AB1E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AB214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AB220.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AB230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AB23C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AB250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AB4B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ABC24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ABD2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ABE34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ACACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ACB6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ACC08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ACCF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ACD7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ACF38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ACFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD0A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD21C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD33C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD424.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD48C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD494.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD534.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD53C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD5B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD6F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD7DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AD880.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ADA0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ADA90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ADB60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ADBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ADCA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ADDA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ADE90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800ADF70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AE1A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AE2D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AE370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AE4C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AE5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AE6A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AE740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AE854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AEE18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AEF3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AF008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AF0BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AF124.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AF18C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AF1E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AF2E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AF490.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AF510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800AFBB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B01F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B0504.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B06F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B09C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B0B50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B12D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B1484.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B18C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B1A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B1A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B1D5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B1E50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B1F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B1FF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B21D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2220.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B23E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B24FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2D64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B2FE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B3260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B3310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B3BA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B4550.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B45B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B4620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B469C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B4714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B47FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B4910.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B4A00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B4AB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B51FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B52F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5410.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5530.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5570.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5580.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B55F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B56A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B57E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5840.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B585C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5AB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5C18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5EE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B5FA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B6068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B60DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B6250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B6370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B64A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B657C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B6680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B670C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B679C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B68E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B6A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B6D3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B6DB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B6F20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B71F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B71FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7204.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7210.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B73AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B76B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7738.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B778C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B779C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7A28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7A30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7A58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7A88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7AB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7B10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7BB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7C50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7C70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7CD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B7D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B8260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B8294.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B8594.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B8890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B8B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B8D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B8E98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B8F90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B92C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B9904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800B9A08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA1FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA264.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA48C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA684.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA6C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA6E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA7F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1000/func_800BA9E0.s")
