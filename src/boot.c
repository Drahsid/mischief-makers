#include <inttypes.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80000400.s")

#ifdef NON_MATCHING
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
#pragma GLOBAL_ASM("asm/nonmatchings/boot/Framebuffer_Clear.s")
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
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80000718.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800008E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80000A84.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80000C20.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80000FE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80001098.s")

void func_800011F0(int32_t arg0, uint32_t arg1, uint32_t arg2) {
    uint32_t sp30[6];
    uint32_t sp2C;

    func_8009B6E0(arg1, arg2);
    func_8009B790(&sp30, 0, 0, arg0, arg1, arg2, &D_8012ABA8);
    func_8009AD10(&D_8012ABA8, &sp2C, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80001264.s")

void func_80001290(int32_t arg0, uint32_t arg1, uint32_t arg2) {
    uint32_t sp2C[2];
    uint16_t sp28[8];

    func_8009B6E0(arg1, arg2);
    func_8009B790(&sp28, 0, 0, arg0, arg1, arg2, &D_8012ABA8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800012F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_8000147C.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80001670.s")
#endif

#ifdef NON_MATCHING
/* I think this is the pseudo-rng function
 * Differences are regalloc, and a move in the place of an sra
 * Pretty sure its just >> 8 but I can't find closer instructions than with the code I currently have
*/
int32_t func_8000178C(void) {
    D_800BE5A4 = (D_800BE5A4 * 0x85) + 1;
    return ((D_800BE5A4 & 0xFFFF) / 0x100) & 0xFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_8000178C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800017D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80001988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80001A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80001B38.s")

void func_800020BC(void) {
    osCreateMesgQueue(&D_801377D0, &D_801378C0, 1);
    func_8009A6F0(4, &D_801377D0, 0);
    func_8009E2F0(&D_801377D0, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80002114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800028D0.s")

#ifdef NON_MATCHING
void func_800029EC(void) {
    func_8009AEA0();
    func_8009B014(D_8016E6F0);
    func_8009B294(D_8016E6F0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800029EC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80002A2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80002AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80002B50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80002F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800032C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_8000334C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800033B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800033F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800034B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800034FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800035F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800036C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003778.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003828.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800038C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003980.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800039B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003A10.s")

#ifdef NON_MATCHING
// instruction ordering is wrong, and for some reason this shifts code by 4 bytes?
void func_80003A38(void) {
    func_8009FF40(D_8016DFE4);
    D_800EF4D0 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003A38.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003D64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800040A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800045F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800046FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004738.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_8000474C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_8000477C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800047B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004804.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004910.s")
