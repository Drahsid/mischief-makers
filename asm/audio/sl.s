.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynNew
/* 9F140 8009E540 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 9F144 8009E544 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9F148 8009E548 AFA40048 */  sw         $a0, 0x48($sp)
/* 9F14C 8009E54C AFA5004C */  sw         $a1, 0x4c($sp)
/* 9F150 8009E550 8FAE004C */  lw         $t6, 0x4c($sp)
/* 9F154 8009E554 8DCF0014 */  lw         $t7, 0x14($t6)
/* 9F158 8009E558 AFAF0030 */  sw         $t7, 0x30($sp)
/* 9F15C 8009E55C 8FB80048 */  lw         $t8, 0x48($sp)
/* 9F160 8009E560 AF000000 */  sw         $zero, ($t8)
/* 9F164 8009E564 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9F168 8009E568 8FA90048 */  lw         $t1, 0x48($sp)
/* 9F16C 8009E56C 8F280004 */  lw         $t0, 4($t9)
/* 9F170 8009E570 AD28003C */  sw         $t0, 0x3c($t1)
/* 9F174 8009E574 8FAA0048 */  lw         $t2, 0x48($sp)
/* 9F178 8009E578 AD400020 */  sw         $zero, 0x20($t2)
/* 9F17C 8009E57C 8FAB0048 */  lw         $t3, 0x48($sp)
/* 9F180 8009E580 AD60001C */  sw         $zero, 0x1c($t3)
/* 9F184 8009E584 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9F188 8009E588 8FAE0048 */  lw         $t6, 0x48($sp)
/* 9F18C 8009E58C 8D8D0018 */  lw         $t5, 0x18($t4)
/* 9F190 8009E590 ADCD0044 */  sw         $t5, 0x44($t6)
/* 9F194 8009E594 8FB80048 */  lw         $t8, 0x48($sp)
/* 9F198 8009E598 240F00A0 */  addiu      $t7, $zero, 0xa0
/* 9F19C 8009E59C AF0F0048 */  sw         $t7, 0x48($t8)
/* 9F1A0 8009E5A0 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9F1A4 8009E5A4 8FA90048 */  lw         $t1, 0x48($sp)
/* 9F1A8 8009E5A8 8F280010 */  lw         $t0, 0x10($t9)
/* 9F1AC 8009E5AC AD280024 */  sw         $t0, 0x24($t1)
/* 9F1B0 8009E5B0 3C04800F */  lui        $a0, %hi(D_800ED930)
/* 9F1B4 8009E5B4 240A001C */  addiu      $t2, $zero, 0x1c
/* 9F1B8 8009E5B8 AFAA0010 */  sw         $t2, 0x10($sp)
/* 9F1BC 8009E5BC 2484D930 */  addiu      $a0, $a0, %lo(D_800ED930)
/* 9F1C0 8009E5C0 2405003D */  addiu      $a1, $zero, 0x3d
/* 9F1C4 8009E5C4 8FA60030 */  lw         $a2, 0x30($sp)
/* 9F1C8 8009E5C8 0C026ECC */  jal        alHeapDBAlloc
/* 9F1CC 8009E5CC 24070001 */   addiu     $a3, $zero, 1
/* 9F1D0 8009E5D0 AFA2002C */  sw         $v0, 0x2c($sp)
/* 9F1D4 8009E5D4 0C02BC63 */  jal        alSaveNew
/* 9F1D8 8009E5D8 8FA4002C */   lw        $a0, 0x2c($sp)
/* 9F1DC 8009E5DC 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9F1E0 8009E5E0 8FAC0048 */  lw         $t4, 0x48($sp)
/* 9F1E4 8009E5E4 AD8B0038 */  sw         $t3, 0x38($t4)
/* 9F1E8 8009E5E8 3C04800F */  lui        $a0, %hi(D_800ED948)
/* 9F1EC 8009E5EC 240D004C */  addiu      $t5, $zero, 0x4c
/* 9F1F0 8009E5F0 AFAD0010 */  sw         $t5, 0x10($sp)
/* 9F1F4 8009E5F4 2484D948 */  addiu      $a0, $a0, %lo(D_800ED948)
/* 9F1F8 8009E5F8 24050045 */  addiu      $a1, $zero, 0x45
/* 9F1FC 8009E5FC 8FA60030 */  lw         $a2, 0x30($sp)
/* 9F200 8009E600 0C026ECC */  jal        alHeapDBAlloc
/* 9F204 8009E604 24070001 */   addiu     $a3, $zero, 1
/* 9F208 8009E608 8FAE0048 */  lw         $t6, 0x48($sp)
/* 9F20C 8009E60C ADC20034 */  sw         $v0, 0x34($t6)
/* 9F210 8009E610 8FB80048 */  lw         $t8, 0x48($sp)
/* 9F214 8009E614 240F0001 */  addiu      $t7, $zero, 1
/* 9F218 8009E618 AF0F0040 */  sw         $t7, 0x40($t8)
/* 9F21C 8009E61C 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9F220 8009E620 3C04800F */  lui        $a0, %hi(D_800ED960)
/* 9F224 8009E624 24080004 */  addiu      $t0, $zero, 4
/* 9F228 8009E628 8F270004 */  lw         $a3, 4($t9)
/* 9F22C 8009E62C AFA80010 */  sw         $t0, 0x10($sp)
/* 9F230 8009E630 2484D960 */  addiu      $a0, $a0, %lo(D_800ED960)
/* 9F234 8009E634 24050047 */  addiu      $a1, $zero, 0x47
/* 9F238 8009E638 0C026ECC */  jal        alHeapDBAlloc
/* 9F23C 8009E63C 8FA60030 */   lw        $a2, 0x30($sp)
/* 9F240 8009E640 AFA20028 */  sw         $v0, 0x28($sp)
/* 9F244 8009E644 8FA90048 */  lw         $t1, 0x48($sp)
/* 9F248 8009E648 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9F24C 8009E64C 8FA50028 */  lw         $a1, 0x28($sp)
/* 9F250 8009E650 8D240034 */  lw         $a0, 0x34($t1)
/* 9F254 8009E654 0C02BC2F */  jal        alAuxBusNew
/* 9F258 8009E658 8D460004 */   lw        $a2, 4($t2)
/* 9F25C 8009E65C 3C04800F */  lui        $a0, %hi(D_800ED978)
/* 9F260 8009E660 240B0020 */  addiu      $t3, $zero, 0x20
/* 9F264 8009E664 AFAB0010 */  sw         $t3, 0x10($sp)
/* 9F268 8009E668 2484D978 */  addiu      $a0, $a0, %lo(D_800ED978)
/* 9F26C 8009E66C 2405004D */  addiu      $a1, $zero, 0x4d
/* 9F270 8009E670 8FA60030 */  lw         $a2, 0x30($sp)
/* 9F274 8009E674 0C026ECC */  jal        alHeapDBAlloc
/* 9F278 8009E678 24070001 */   addiu     $a3, $zero, 1
/* 9F27C 8009E67C 8FAC0048 */  lw         $t4, 0x48($sp)
/* 9F280 8009E680 AD820030 */  sw         $v0, 0x30($t4)
/* 9F284 8009E684 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9F288 8009E688 3C04800F */  lui        $a0, %hi(D_800ED990)
/* 9F28C 8009E68C 240E0004 */  addiu      $t6, $zero, 4
/* 9F290 8009E690 8DA70004 */  lw         $a3, 4($t5)
/* 9F294 8009E694 AFAE0010 */  sw         $t6, 0x10($sp)
/* 9F298 8009E698 2484D990 */  addiu      $a0, $a0, %lo(D_800ED990)
/* 9F29C 8009E69C 2405004E */  addiu      $a1, $zero, 0x4e
/* 9F2A0 8009E6A0 0C026ECC */  jal        alHeapDBAlloc
/* 9F2A4 8009E6A4 8FA60030 */   lw        $a2, 0x30($sp)
/* 9F2A8 8009E6A8 AFA20028 */  sw         $v0, 0x28($sp)
/* 9F2AC 8009E6AC 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9F2B0 8009E6B0 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9F2B4 8009E6B4 8FA50028 */  lw         $a1, 0x28($sp)
/* 9F2B8 8009E6B8 8DE40030 */  lw         $a0, 0x30($t7)
/* 9F2BC 8009E6BC 0C02BC49 */  jal        alMainBusNew
/* 9F2C0 8009E6C0 8F060004 */   lw        $a2, 4($t8)
/* 9F2C4 8009E6C4 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9F2C8 8009E6C8 9328001C */  lbu        $t0, 0x1c($t9)
/* 9F2CC 8009E6CC 11000008 */  beqz       $t0, .L8009E6F0
/* 9F2D0 8009E6D0 00000000 */   nop
/* 9F2D4 8009E6D4 8FA40048 */  lw         $a0, 0x48($sp)
/* 9F2D8 8009E6D8 00002825 */  or         $a1, $zero, $zero
/* 9F2DC 8009E6DC 8FA6004C */  lw         $a2, 0x4c($sp)
/* 9F2E0 8009E6E0 0C02BC78 */  jal        alSynAllocFX
/* 9F2E4 8009E6E4 8FA70030 */   lw        $a3, 0x30($sp)
/* 9F2E8 8009E6E8 10000006 */  b          .L8009E704
/* 9F2EC 8009E6EC 00000000 */   nop
.L8009E6F0:
/* 9F2F0 8009E6F0 8FA90048 */  lw         $t1, 0x48($sp)
/* 9F2F4 8009E6F4 24050002 */  addiu      $a1, $zero, 2
/* 9F2F8 8009E6F8 8D240030 */  lw         $a0, 0x30($t1)
/* 9F2FC 8009E6FC 0C02BD24 */  jal        alAuxBusParam
/* 9F300 8009E700 8D260034 */   lw        $a2, 0x34($t1)
.L8009E704:
/* 9F304 8009E704 8FAA0048 */  lw         $t2, 0x48($sp)
/* 9F308 8009E708 AD400004 */  sw         $zero, 4($t2)
/* 9F30C 8009E70C 8FAB0048 */  lw         $t3, 0x48($sp)
/* 9F310 8009E710 AD600008 */  sw         $zero, 8($t3)
/* 9F314 8009E714 8FAC0048 */  lw         $t4, 0x48($sp)
/* 9F318 8009E718 AD800014 */  sw         $zero, 0x14($t4)
/* 9F31C 8009E71C 8FAD0048 */  lw         $t5, 0x48($sp)
/* 9F320 8009E720 ADA00018 */  sw         $zero, 0x18($t5)
/* 9F324 8009E724 8FAE0048 */  lw         $t6, 0x48($sp)
/* 9F328 8009E728 ADC0000C */  sw         $zero, 0xc($t6)
/* 9F32C 8009E72C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9F330 8009E730 ADE00010 */  sw         $zero, 0x10($t7)
/* 9F334 8009E734 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9F338 8009E738 3C04800F */  lui        $a0, %hi(D_800ED9A8)
/* 9F33C 8009E73C 241900DC */  addiu      $t9, $zero, 0xdc
/* 9F340 8009E740 8F070004 */  lw         $a3, 4($t8)
/* 9F344 8009E744 AFB90010 */  sw         $t9, 0x10($sp)
/* 9F348 8009E748 2484D9A8 */  addiu      $a0, $a0, %lo(D_800ED9A8)
/* 9F34C 8009E74C 24050066 */  addiu      $a1, $zero, 0x66
/* 9F350 8009E750 0C026ECC */  jal        alHeapDBAlloc
/* 9F354 8009E754 8FA60030 */   lw        $a2, 0x30($sp)
/* 9F358 8009E758 AFA20034 */  sw         $v0, 0x34($sp)
/* 9F35C 8009E75C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9F360 8009E760 AFA00044 */  sw         $zero, 0x44($sp)
/* 9F364 8009E764 8D090004 */  lw         $t1, 4($t0)
/* 9F368 8009E768 1920003E */  blez       $t1, .L8009E864
/* 9F36C 8009E76C 00000000 */   nop
.L8009E770:
/* 9F370 8009E770 8FAA0044 */  lw         $t2, 0x44($sp)
/* 9F374 8009E774 8FAC0034 */  lw         $t4, 0x34($sp)
/* 9F378 8009E778 000A58C0 */  sll        $t3, $t2, 3
/* 9F37C 8009E77C 016A5823 */  subu       $t3, $t3, $t2
/* 9F380 8009E780 000B58C0 */  sll        $t3, $t3, 3
/* 9F384 8009E784 016A5823 */  subu       $t3, $t3, $t2
/* 9F388 8009E788 000B5880 */  sll        $t3, $t3, 2
/* 9F38C 8009E78C 016C6821 */  addu       $t5, $t3, $t4
/* 9F390 8009E790 AFAD003C */  sw         $t5, 0x3c($sp)
/* 9F394 8009E794 8FA50048 */  lw         $a1, 0x48($sp)
/* 9F398 8009E798 8FA4003C */  lw         $a0, 0x3c($sp)
/* 9F39C 8009E79C 0C026EAE */  jal        alLink
/* 9F3A0 8009E7A0 24A50004 */   addiu     $a1, $a1, 4
/* 9F3A4 8009E7A4 8FAE003C */  lw         $t6, 0x3c($sp)
/* 9F3A8 8009E7A8 ADC00008 */  sw         $zero, 8($t6)
/* 9F3AC 8009E7AC 8FA4003C */  lw         $a0, 0x3c($sp)
/* 9F3B0 8009E7B0 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9F3B4 8009E7B4 8FA60030 */  lw         $a2, 0x30($sp)
/* 9F3B8 8009E7B8 24840010 */  addiu      $a0, $a0, 0x10
/* 9F3BC 8009E7BC 0C02BBCF */  jal        alLoadNew
/* 9F3C0 8009E7C0 8DE50024 */   lw        $a1, 0x24($t7)
/* 9F3C4 8009E7C4 8FA4003C */  lw         $a0, 0x3c($sp)
/* 9F3C8 8009E7C8 24050001 */  addiu      $a1, $zero, 1
/* 9F3CC 8009E7CC 00003025 */  or         $a2, $zero, $zero
/* 9F3D0 8009E7D0 0C02C07D */  jal        alLoadParam
/* 9F3D4 8009E7D4 24840010 */   addiu     $a0, $a0, 0x10
/* 9F3D8 8009E7D8 8FA4003C */  lw         $a0, 0x3c($sp)
/* 9F3DC 8009E7DC 8FA50030 */  lw         $a1, 0x30($sp)
/* 9F3E0 8009E7E0 0C02BC02 */  jal        alResampleNew
/* 9F3E4 8009E7E4 24840058 */   addiu     $a0, $a0, 0x58
/* 9F3E8 8009E7E8 8FB8003C */  lw         $t8, 0x3c($sp)
/* 9F3EC 8009E7EC 24050001 */  addiu      $a1, $zero, 1
/* 9F3F0 8009E7F0 27040058 */  addiu      $a0, $t8, 0x58
/* 9F3F4 8009E7F4 0C02C270 */  jal        alResampleParam
/* 9F3F8 8009E7F8 27060010 */   addiu     $a2, $t8, 0x10
/* 9F3FC 8009E7FC 8FA4003C */  lw         $a0, 0x3c($sp)
/* 9F400 8009E800 8FA50030 */  lw         $a1, 0x30($sp)
/* 9F404 8009E804 0C02BB86 */  jal        alEnvmixerNew
/* 9F408 8009E808 2484008C */   addiu     $a0, $a0, 0x8c
/* 9F40C 8009E80C 8FB9003C */  lw         $t9, 0x3c($sp)
/* 9F410 8009E810 24050001 */  addiu      $a1, $zero, 1
/* 9F414 8009E814 2724008C */  addiu      $a0, $t9, 0x8c
/* 9F418 8009E818 0C02C4B6 */  jal        alEnvmixerParam
/* 9F41C 8009E81C 27260058 */   addiu     $a2, $t9, 0x58
/* 9F420 8009E820 8FA80048 */  lw         $t0, 0x48($sp)
/* 9F424 8009E824 8FA6003C */  lw         $a2, 0x3c($sp)
/* 9F428 8009E828 24050002 */  addiu      $a1, $zero, 2
/* 9F42C 8009E82C 8D040034 */  lw         $a0, 0x34($t0)
/* 9F430 8009E830 0C02C7DC */  jal        func_800B1F70
/* 9F434 8009E834 24C6008C */   addiu     $a2, $a2, 0x8c
/* 9F438 8009E838 8FA9003C */  lw         $t1, 0x3c($sp)
/* 9F43C 8009E83C 252A008C */  addiu      $t2, $t1, 0x8c
/* 9F440 8009E840 AD2A000C */  sw         $t2, 0xc($t1)
/* 9F444 8009E844 8FAB0044 */  lw         $t3, 0x44($sp)
/* 9F448 8009E848 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9F44C 8009E84C 256C0001 */  addiu      $t4, $t3, 1
/* 9F450 8009E850 AFAC0044 */  sw         $t4, 0x44($sp)
/* 9F454 8009E854 8DAE0004 */  lw         $t6, 4($t5)
/* 9F458 8009E858 018E082A */  slt        $at, $t4, $t6
/* 9F45C 8009E85C 1420FFC4 */  bnez       $at, .L8009E770
/* 9F460 8009E860 00000000 */   nop
.L8009E864:
/* 9F464 8009E864 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9F468 8009E868 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9F46C 8009E86C 24050001 */  addiu      $a1, $zero, 1
/* 9F470 8009E870 0C02C855 */  jal        alSaveParam
/* 9F474 8009E874 8DE60030 */   lw        $a2, 0x30($t7)
/* 9F478 8009E878 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9F47C 8009E87C 3C04800F */  lui        $a0, %hi(D_800ED9C0)
/* 9F480 8009E880 2419001C */  addiu      $t9, $zero, 0x1c
/* 9F484 8009E884 8F070008 */  lw         $a3, 8($t8)
/* 9F488 8009E888 AFB90010 */  sw         $t9, 0x10($sp)
/* 9F48C 8009E88C 2484D9C0 */  addiu      $a0, $a0, %lo(D_800ED9C0)
/* 9F490 8009E890 2405007F */  addiu      $a1, $zero, 0x7f
/* 9F494 8009E894 0C026ECC */  jal        alHeapDBAlloc
/* 9F498 8009E898 8FA60030 */   lw        $a2, 0x30($sp)
/* 9F49C 8009E89C AFA20024 */  sw         $v0, 0x24($sp)
/* 9F4A0 8009E8A0 8FA80048 */  lw         $t0, 0x48($sp)
/* 9F4A4 8009E8A4 AD00002C */  sw         $zero, 0x2c($t0)
/* 9F4A8 8009E8A8 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9F4AC 8009E8AC AFA00044 */  sw         $zero, 0x44($sp)
/* 9F4B0 8009E8B0 8D490008 */  lw         $t1, 8($t2)
/* 9F4B4 8009E8B4 19200017 */  blez       $t1, .L8009E914
/* 9F4B8 8009E8B8 00000000 */   nop
.L8009E8BC:
/* 9F4BC 8009E8BC 8FAB0044 */  lw         $t3, 0x44($sp)
/* 9F4C0 8009E8C0 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9F4C4 8009E8C4 000B68C0 */  sll        $t5, $t3, 3
/* 9F4C8 8009E8C8 01AB6823 */  subu       $t5, $t5, $t3
/* 9F4CC 8009E8CC 000D6880 */  sll        $t5, $t5, 2
/* 9F4D0 8009E8D0 01AC7021 */  addu       $t6, $t5, $t4
/* 9F4D4 8009E8D4 AFAE0020 */  sw         $t6, 0x20($sp)
/* 9F4D8 8009E8D8 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9F4DC 8009E8DC 8FB90020 */  lw         $t9, 0x20($sp)
/* 9F4E0 8009E8E0 8DF8002C */  lw         $t8, 0x2c($t7)
/* 9F4E4 8009E8E4 AF380000 */  sw         $t8, ($t9)
/* 9F4E8 8009E8E8 8FA80020 */  lw         $t0, 0x20($sp)
/* 9F4EC 8009E8EC 8FAA0048 */  lw         $t2, 0x48($sp)
/* 9F4F0 8009E8F0 AD48002C */  sw         $t0, 0x2c($t2)
/* 9F4F4 8009E8F4 8FA90044 */  lw         $t1, 0x44($sp)
/* 9F4F8 8009E8F8 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9F4FC 8009E8FC 252B0001 */  addiu      $t3, $t1, 1
/* 9F500 8009E900 AFAB0044 */  sw         $t3, 0x44($sp)
/* 9F504 8009E904 8DAC0008 */  lw         $t4, 8($t5)
/* 9F508 8009E908 016C082A */  slt        $at, $t3, $t4
/* 9F50C 8009E90C 1420FFEB */  bnez       $at, .L8009E8BC
/* 9F510 8009E910 00000000 */   nop
.L8009E914:
/* 9F514 8009E914 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9F518 8009E918 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9F51C 8009E91C ADEE0028 */  sw         $t6, 0x28($t7)
/* 9F520 8009E920 10000001 */  b          .L8009E928
/* 9F524 8009E924 00000000 */   nop
.L8009E928:
/* 9F528 8009E928 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9F52C 8009E92C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 9F530 8009E930 03E00008 */  jr         $ra
/* 9F534 8009E934 00000000 */   nop

glabel alAudioFrame
/* 9F538 8009E938 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 9F53C 8009E93C AFBF0024 */  sw         $ra, 0x24($sp)
/* 9F540 8009E940 AFA40058 */  sw         $a0, 0x58($sp)
/* 9F544 8009E944 AFA5005C */  sw         $a1, 0x5c($sp)
/* 9F548 8009E948 AFA60060 */  sw         $a2, 0x60($sp)
/* 9F54C 8009E94C AFA70064 */  sw         $a3, 0x64($sp)
/* 9F550 8009E950 AFB10020 */  sw         $s1, 0x20($sp)
/* 9F554 8009E954 AFB0001C */  sw         $s0, 0x1c($sp)
/* 9F558 8009E958 3C0E800F */  lui        $t6, %hi(alGlobals)
/* 9F55C 8009E95C 8DCEA520 */  lw         $t6, %lo(alGlobals)($t6)
/* 9F560 8009E960 AFAE004C */  sw         $t6, 0x4c($sp)
/* 9F564 8009E964 A7A0004A */  sh         $zero, 0x4a($sp)
/* 9F568 8009E968 8FAF0058 */  lw         $t7, 0x58($sp)
/* 9F56C 8009E96C AFAF0044 */  sw         $t7, 0x44($sp)
/* 9F570 8009E970 8FB80060 */  lw         $t8, 0x60($sp)
/* 9F574 8009E974 AFB80038 */  sw         $t8, 0x38($sp)
/* 9F578 8009E978 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9F57C 8009E97C 8F280000 */  lw         $t0, ($t9)
/* 9F580 8009E980 15000005 */  bnez       $t0, .L8009E998
/* 9F584 8009E984 00000000 */   nop
/* 9F588 8009E988 8FA9005C */  lw         $t1, 0x5c($sp)
/* 9F58C 8009E98C AD200000 */  sw         $zero, ($t1)
/* 9F590 8009E990 1000007E */  b          .L8009EB8C
/* 9F594 8009E994 8FA20058 */   lw        $v0, 0x58($sp)
.L8009E998:
/* 9F598 8009E998 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9F59C 8009E99C 0C027B61 */  jal        func_8009ED84
/* 9F5A0 8009E9A0 27A50054 */   addiu     $a1, $sp, 0x54
/* 9F5A4 8009E9A4 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9F5A8 8009E9A8 AD42001C */  sw         $v0, 0x1c($t2)
/* 9F5AC 8009E9AC 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9F5B0 8009E9B0 8FAF0064 */  lw         $t7, 0x64($sp)
/* 9F5B4 8009E9B4 8D6C001C */  lw         $t4, 0x1c($t3)
/* 9F5B8 8009E9B8 8D6D0020 */  lw         $t5, 0x20($t3)
/* 9F5BC 8009E9BC 018D7023 */  subu       $t6, $t4, $t5
/* 9F5C0 8009E9C0 01CF082A */  slt        $at, $t6, $t7
/* 9F5C4 8009E9C4 10200021 */  beqz       $at, .L8009EA4C
/* 9F5C8 8009E9C8 00000000 */   nop
.L8009E9CC:
/* 9F5CC 8009E9CC 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9F5D0 8009E9D0 2401FFF0 */  addiu      $at, $zero, -0x10
/* 9F5D4 8009E9D4 8F19001C */  lw         $t9, 0x1c($t8)
/* 9F5D8 8009E9D8 03214024 */  and        $t0, $t9, $at
/* 9F5DC 8009E9DC AF08001C */  sw         $t0, 0x1c($t8)
/* 9F5E0 8009E9E0 8FA90054 */  lw         $t1, 0x54($sp)
/* 9F5E4 8009E9E4 8D390008 */  lw         $t9, 8($t1)
/* 9F5E8 8009E9E8 01202025 */  or         $a0, $t1, $zero
/* 9F5EC 8009E9EC 0320F809 */  jalr       $t9
/* 9F5F0 8009E9F0 00000000 */   nop
/* 9F5F4 8009E9F4 00408825 */  or         $s1, $v0, $zero
/* 9F5F8 8009E9F8 02202825 */  or         $a1, $s1, $zero
/* 9F5FC 8009E9FC 0C027B36 */  jal        func_8009ECD8
/* 9F600 8009EA00 8FA4004C */   lw        $a0, 0x4c($sp)
/* 9F604 8009EA04 8FAA0054 */  lw         $t2, 0x54($sp)
/* 9F608 8009EA08 00408025 */  or         $s0, $v0, $zero
/* 9F60C 8009EA0C 8D4B0010 */  lw         $t3, 0x10($t2)
/* 9F610 8009EA10 01706021 */  addu       $t4, $t3, $s0
/* 9F614 8009EA14 AD4C0010 */  sw         $t4, 0x10($t2)
/* 9F618 8009EA18 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9F61C 8009EA1C 0C027B61 */  jal        func_8009ED84
/* 9F620 8009EA20 27A50054 */   addiu     $a1, $sp, 0x54
/* 9F624 8009EA24 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9F628 8009EA28 ADA2001C */  sw         $v0, 0x1c($t5)
/* 9F62C 8009EA2C 8FAE004C */  lw         $t6, 0x4c($sp)
/* 9F630 8009EA30 8FA90064 */  lw         $t1, 0x64($sp)
/* 9F634 8009EA34 8DCF001C */  lw         $t7, 0x1c($t6)
/* 9F638 8009EA38 8DC80020 */  lw         $t0, 0x20($t6)
/* 9F63C 8009EA3C 01E8C023 */  subu       $t8, $t7, $t0
/* 9F640 8009EA40 0309082A */  slt        $at, $t8, $t1
/* 9F644 8009EA44 1420FFE1 */  bnez       $at, .L8009E9CC
/* 9F648 8009EA48 00000000 */   nop
.L8009EA4C:
/* 9F64C 8009EA4C 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9F650 8009EA50 2401FFF0 */  addiu      $at, $zero, -0x10
/* 9F654 8009EA54 8F2B001C */  lw         $t3, 0x1c($t9)
/* 9F658 8009EA58 01616024 */  and        $t4, $t3, $at
/* 9F65C 8009EA5C AF2C001C */  sw         $t4, 0x1c($t9)
/* 9F660 8009EA60 8FAA0064 */  lw         $t2, 0x64($sp)
/* 9F664 8009EA64 1940003D */  blez       $t2, .L8009EB5C
/* 9F668 8009EA68 00000000 */   nop
.L8009EA6C:
/* 9F66C 8009EA6C 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9F670 8009EA70 8FAF0064 */  lw         $t7, 0x64($sp)
/* 9F674 8009EA74 8DAE0048 */  lw         $t6, 0x48($t5)
/* 9F678 8009EA78 01CF082A */  slt        $at, $t6, $t7
/* 9F67C 8009EA7C 10200003 */  beqz       $at, .L8009EA8C
/* 9F680 8009EA80 00000000 */   nop
/* 9F684 8009EA84 10000003 */  b          .L8009EA94
/* 9F688 8009EA88 AFAE003C */   sw        $t6, 0x3c($sp)
.L8009EA8C:
/* 9F68C 8009EA8C 8FA80064 */  lw         $t0, 0x64($sp)
/* 9F690 8009EA90 AFA8003C */  sw         $t0, 0x3c($sp)
.L8009EA94:
/* 9F694 8009EA94 8FB80044 */  lw         $t8, 0x44($sp)
/* 9F698 8009EA98 AFB80040 */  sw         $t8, 0x40($sp)
/* 9F69C 8009EA9C 8FA90040 */  lw         $t1, 0x40($sp)
/* 9F6A0 8009EAA0 252B0008 */  addiu      $t3, $t1, 8
/* 9F6A4 8009EAA4 AFAB0040 */  sw         $t3, 0x40($sp)
/* 9F6A8 8009EAA8 AFA90034 */  sw         $t1, 0x34($sp)
/* 9F6AC 8009EAAC 8FB90034 */  lw         $t9, 0x34($sp)
/* 9F6B0 8009EAB0 3C0C0700 */  lui        $t4, 0x700
/* 9F6B4 8009EAB4 AF2C0000 */  sw         $t4, ($t9)
/* 9F6B8 8009EAB8 8FAA0034 */  lw         $t2, 0x34($sp)
/* 9F6BC 8009EABC AD400004 */  sw         $zero, 4($t2)
/* 9F6C0 8009EAC0 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9F6C4 8009EAC4 8DAF0038 */  lw         $t7, 0x38($t5)
/* 9F6C8 8009EAC8 AFAF0050 */  sw         $t7, 0x50($sp)
/* 9F6CC 8009EACC 8FAE0050 */  lw         $t6, 0x50($sp)
/* 9F6D0 8009EAD0 24050006 */  addiu      $a1, $zero, 6
/* 9F6D4 8009EAD4 8FA60038 */  lw         $a2, 0x38($sp)
/* 9F6D8 8009EAD8 8DD90008 */  lw         $t9, 8($t6)
/* 9F6DC 8009EADC 01C02025 */  or         $a0, $t6, $zero
/* 9F6E0 8009EAE0 0320F809 */  jalr       $t9
/* 9F6E4 8009EAE4 00000000 */   nop
/* 9F6E8 8009EAE8 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9F6EC 8009EAEC 8FA90040 */  lw         $t1, 0x40($sp)
/* 9F6F0 8009EAF0 8FA80050 */  lw         $t0, 0x50($sp)
/* 9F6F4 8009EAF4 8F070020 */  lw         $a3, 0x20($t8)
/* 9F6F8 8009EAF8 AFA90010 */  sw         $t1, 0x10($sp)
/* 9F6FC 8009EAFC 8D190004 */  lw         $t9, 4($t0)
/* 9F700 8009EB00 27A5004A */  addiu      $a1, $sp, 0x4a
/* 9F704 8009EB04 8FA6003C */  lw         $a2, 0x3c($sp)
/* 9F708 8009EB08 0320F809 */  jalr       $t9
/* 9F70C 8009EB0C 01002025 */   or        $a0, $t0, $zero
/* 9F710 8009EB10 AFA20044 */  sw         $v0, 0x44($sp)
/* 9F714 8009EB14 8FAB0064 */  lw         $t3, 0x64($sp)
/* 9F718 8009EB18 8FAC003C */  lw         $t4, 0x3c($sp)
/* 9F71C 8009EB1C 016C5023 */  subu       $t2, $t3, $t4
/* 9F720 8009EB20 AFAA0064 */  sw         $t2, 0x64($sp)
/* 9F724 8009EB24 8FAF003C */  lw         $t7, 0x3c($sp)
/* 9F728 8009EB28 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9F72C 8009EB2C 000F7040 */  sll        $t6, $t7, 1
/* 9F730 8009EB30 000EC040 */  sll        $t8, $t6, 1
/* 9F734 8009EB34 01B84821 */  addu       $t1, $t5, $t8
/* 9F738 8009EB38 AFA90038 */  sw         $t1, 0x38($sp)
/* 9F73C 8009EB3C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9F740 8009EB40 8FAB003C */  lw         $t3, 0x3c($sp)
/* 9F744 8009EB44 8D190020 */  lw         $t9, 0x20($t0)
/* 9F748 8009EB48 032B6021 */  addu       $t4, $t9, $t3
/* 9F74C 8009EB4C AD0C0020 */  sw         $t4, 0x20($t0)
/* 9F750 8009EB50 8FAA0064 */  lw         $t2, 0x64($sp)
/* 9F754 8009EB54 1D40FFC5 */  bgtz       $t2, .L8009EA6C
/* 9F758 8009EB58 00000000 */   nop
.L8009EB5C:
/* 9F75C 8009EB5C 8FAF0044 */  lw         $t7, 0x44($sp)
/* 9F760 8009EB60 8FAE0058 */  lw         $t6, 0x58($sp)
/* 9F764 8009EB64 8FA9005C */  lw         $t1, 0x5c($sp)
/* 9F768 8009EB68 01EE6823 */  subu       $t5, $t7, $t6
/* 9F76C 8009EB6C 000DC0C3 */  sra        $t8, $t5, 3
/* 9F770 8009EB70 AD380000 */  sw         $t8, ($t1)
/* 9F774 8009EB74 0C027B0D */  jal        _collectPVoices
/* 9F778 8009EB78 8FA4004C */   lw        $a0, 0x4c($sp)
/* 9F77C 8009EB7C 10000003 */  b          .L8009EB8C
/* 9F780 8009EB80 8FA20044 */   lw        $v0, 0x44($sp)
/* 9F784 8009EB84 10000001 */  b          .L8009EB8C
/* 9F788 8009EB88 00000000 */   nop
.L8009EB8C:
/* 9F78C 8009EB8C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9F790 8009EB90 8FB0001C */  lw         $s0, 0x1c($sp)
/* 9F794 8009EB94 8FB10020 */  lw         $s1, 0x20($sp)
/* 9F798 8009EB98 03E00008 */  jr         $ra
/* 9F79C 8009EB9C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel __allocParam
/* 9F7A0 8009EBA0 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9F7A4 8009EBA4 AFA00004 */  sw         $zero, 4($sp)
/* 9F7A8 8009EBA8 3C0E800F */  lui        $t6, %hi(alGlobals)
/* 9F7AC 8009EBAC 8DCEA520 */  lw         $t6, %lo(alGlobals)($t6)
/* 9F7B0 8009EBB0 AFAE0000 */  sw         $t6, ($sp)
/* 9F7B4 8009EBB4 8FAF0000 */  lw         $t7, ($sp)
/* 9F7B8 8009EBB8 8DF8002C */  lw         $t8, 0x2c($t7)
/* 9F7BC 8009EBBC 1300000A */  beqz       $t8, .L8009EBE8
/* 9F7C0 8009EBC0 00000000 */   nop
/* 9F7C4 8009EBC4 8FB90000 */  lw         $t9, ($sp)
/* 9F7C8 8009EBC8 8F28002C */  lw         $t0, 0x2c($t9)
/* 9F7CC 8009EBCC AFA80004 */  sw         $t0, 4($sp)
/* 9F7D0 8009EBD0 8FA90000 */  lw         $t1, ($sp)
/* 9F7D4 8009EBD4 8D2A002C */  lw         $t2, 0x2c($t1)
/* 9F7D8 8009EBD8 8D4B0000 */  lw         $t3, ($t2)
/* 9F7DC 8009EBDC AD2B002C */  sw         $t3, 0x2c($t1)
/* 9F7E0 8009EBE0 8FAC0004 */  lw         $t4, 4($sp)
/* 9F7E4 8009EBE4 AD800000 */  sw         $zero, ($t4)
.L8009EBE8:
/* 9F7E8 8009EBE8 10000003 */  b          .L8009EBF8
/* 9F7EC 8009EBEC 8FA20004 */   lw        $v0, 4($sp)
/* 9F7F0 8009EBF0 10000001 */  b          .L8009EBF8
/* 9F7F4 8009EBF4 00000000 */   nop
.L8009EBF8:
/* 9F7F8 8009EBF8 03E00008 */  jr         $ra
/* 9F7FC 8009EBFC 27BD0008 */   addiu     $sp, $sp, 8

glabel __freeParam
/* 9F800 8009EC00 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9F804 8009EC04 3C0E800F */  lui        $t6, %hi(alGlobals)
/* 9F808 8009EC08 8DCEA520 */  lw         $t6, %lo(alGlobals)($t6)
/* 9F80C 8009EC0C AFAE0004 */  sw         $t6, 4($sp)
/* 9F810 8009EC10 8FAF0004 */  lw         $t7, 4($sp)
/* 9F814 8009EC14 8DF8002C */  lw         $t8, 0x2c($t7)
/* 9F818 8009EC18 AC980000 */  sw         $t8, ($a0)
/* 9F81C 8009EC1C 8FB90004 */  lw         $t9, 4($sp)
/* 9F820 8009EC20 AF24002C */  sw         $a0, 0x2c($t9)
/* 9F824 8009EC24 10000001 */  b          .L8009EC2C
/* 9F828 8009EC28 00000000 */   nop
.L8009EC2C:
/* 9F82C 8009EC2C 03E00008 */  jr         $ra
/* 9F830 8009EC30 27BD0008 */   addiu     $sp, $sp, 8

glabel _collectPVoices
/* 9F834 8009EC34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9F838 8009EC38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F83C 8009EC3C AFA40020 */  sw         $a0, 0x20($sp)
/* 9F840 8009EC40 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9F844 8009EC44 8DCF0014 */  lw         $t7, 0x14($t6)
/* 9F848 8009EC48 11E0000D */  beqz       $t7, .L8009EC80
/* 9F84C 8009EC4C AFAF001C */   sw        $t7, 0x1c($sp)
.L8009EC50:
/* 9F850 8009EC50 8FB8001C */  lw         $t8, 0x1c($sp)
/* 9F854 8009EC54 AFB80018 */  sw         $t8, 0x18($sp)
/* 9F858 8009EC58 0C026EBB */  jal        alUnlink
/* 9F85C 8009EC5C 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9F860 8009EC60 8FA50020 */  lw         $a1, 0x20($sp)
/* 9F864 8009EC64 8FA4001C */  lw         $a0, 0x1c($sp)
/* 9F868 8009EC68 0C026EAE */  jal        alLink
/* 9F86C 8009EC6C 24A50004 */   addiu     $a1, $a1, 4
/* 9F870 8009EC70 8FB90020 */  lw         $t9, 0x20($sp)
/* 9F874 8009EC74 8F280014 */  lw         $t0, 0x14($t9)
/* 9F878 8009EC78 1500FFF5 */  bnez       $t0, .L8009EC50
/* 9F87C 8009EC7C AFA8001C */   sw        $t0, 0x1c($sp)
.L8009EC80:
/* 9F880 8009EC80 10000001 */  b          .L8009EC88
/* 9F884 8009EC84 00000000 */   nop
.L8009EC88:
/* 9F888 8009EC88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F88C 8009EC8C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9F890 8009EC90 03E00008 */  jr         $ra
/* 9F894 8009EC94 00000000 */   nop

glabel _freePVoice
/* 9F898 8009EC98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9F89C 8009EC9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F8A0 8009ECA0 AFA40018 */  sw         $a0, 0x18($sp)
/* 9F8A4 8009ECA4 AFA5001C */  sw         $a1, 0x1c($sp)
/* 9F8A8 8009ECA8 0C026EBB */  jal        alUnlink
/* 9F8AC 8009ECAC 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9F8B0 8009ECB0 8FA50018 */  lw         $a1, 0x18($sp)
/* 9F8B4 8009ECB4 8FA4001C */  lw         $a0, 0x1c($sp)
/* 9F8B8 8009ECB8 0C026EAE */  jal        alLink
/* 9F8BC 8009ECBC 24A50014 */   addiu     $a1, $a1, 0x14
/* 9F8C0 8009ECC0 10000001 */  b          .L8009ECC8
/* 9F8C4 8009ECC4 00000000 */   nop
.L8009ECC8:
/* 9F8C8 8009ECC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F8CC 8009ECCC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9F8D0 8009ECD0 03E00008 */  jr         $ra
/* 9F8D4 8009ECD4 00000000 */   nop

glabel func_8009ECD8
/* 9F8D8 8009ECD8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9F8DC 8009ECDC 8C8E0044 */  lw         $t6, 0x44($a0)
/* 9F8E0 8009ECE0 44852000 */  mtc1       $a1, $f4
/* 9F8E4 8009ECE4 3C01800F */  lui        $at, %hi(D_800EDA00)
/* 9F8E8 8009ECE8 448E4000 */  mtc1       $t6, $f8
/* 9F8EC 8009ECEC 468021A0 */  cvt.s.w    $f6, $f4
/* 9F8F0 8009ECF0 D424DA00 */  ldc1       $f4, %lo(D_800EDA00)($at)
/* 9F8F4 8009ECF4 3C013FE0 */  lui        $at, 0x3fe0
/* 9F8F8 8009ECF8 44813800 */  mtc1       $at, $f7
/* 9F8FC 8009ECFC 468042A0 */  cvt.s.w    $f10, $f8
/* 9F900 8009ED00 460A3402 */  mul.s      $f16, $f6, $f10
/* 9F904 8009ED04 44803000 */  mtc1       $zero, $f6
/* 9F908 8009ED08 460084A1 */  cvt.d.s    $f18, $f16
/* 9F90C 8009ED0C 46249203 */  div.d      $f8, $f18, $f4
/* 9F910 8009ED10 46264280 */  add.d      $f10, $f8, $f6
/* 9F914 8009ED14 46205420 */  cvt.s.d    $f16, $f10
/* 9F918 8009ED18 E7B00004 */  swc1       $f16, 4($sp)
/* 9F91C 8009ED1C C7B20004 */  lwc1       $f18, 4($sp)
/* 9F920 8009ED20 4600910D */  trunc.w.s  $f4, $f18
/* 9F924 8009ED24 44022000 */  mfc1       $v0, $f4
/* 9F928 8009ED28 10000003 */  b          .L8009ED38
/* 9F92C 8009ED2C 00000000 */   nop
/* 9F930 8009ED30 10000001 */  b          .L8009ED38
/* 9F934 8009ED34 00000000 */   nop
.L8009ED38:
/* 9F938 8009ED38 03E00008 */  jr         $ra
/* 9F93C 8009ED3C 27BD0008 */   addiu     $sp, $sp, 8

glabel _timeToSamples
/* 9F940 8009ED40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9F944 8009ED44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F948 8009ED48 AFA40018 */  sw         $a0, 0x18($sp)
/* 9F94C 8009ED4C AFA5001C */  sw         $a1, 0x1c($sp)
/* 9F950 8009ED50 8FA40018 */  lw         $a0, 0x18($sp)
/* 9F954 8009ED54 0C027B36 */  jal        func_8009ECD8
/* 9F958 8009ED58 8FA5001C */   lw        $a1, 0x1c($sp)
/* 9F95C 8009ED5C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 9F960 8009ED60 00417024 */  and        $t6, $v0, $at
/* 9F964 8009ED64 10000003 */  b          .L8009ED74
/* 9F968 8009ED68 01C01025 */   or        $v0, $t6, $zero
/* 9F96C 8009ED6C 10000001 */  b          .L8009ED74
/* 9F970 8009ED70 00000000 */   nop
.L8009ED74:
/* 9F974 8009ED74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F978 8009ED78 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9F97C 8009ED7C 03E00008 */  jr         $ra
/* 9F980 8009ED80 00000000 */   nop

glabel func_8009ED84
/* 9F984 8009ED84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9F988 8009ED88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F98C 8009ED8C AFA40020 */  sw         $a0, 0x20($sp)
/* 9F990 8009ED90 AFA50024 */  sw         $a1, 0x24($sp)
/* 9F994 8009ED94 3C0E7FFF */  lui        $t6, 0x7fff
/* 9F998 8009ED98 35CEFFFF */  ori        $t6, $t6, 0xffff
/* 9F99C 8009ED9C AFAE001C */  sw         $t6, 0x1c($sp)
/* 9F9A0 8009EDA0 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9F9A4 8009EDA4 8DF80000 */  lw         $t8, ($t7)
/* 9F9A8 8009EDA8 13000003 */  beqz       $t8, .L8009EDB8
/* 9F9AC 8009EDAC 00000000 */   nop
/* 9F9B0 8009EDB0 10000007 */  b          .L8009EDD0
/* 9F9B4 8009EDB4 00000000 */   nop
.L8009EDB8:
/* 9F9B8 8009EDB8 3C04800F */  lui        $a0, %hi(D_800ED9D8)
/* 9F9BC 8009EDBC 3C05800F */  lui        $a1, %hi(D_800ED9E4)
/* 9F9C0 8009EDC0 24A5D9E4 */  addiu      $a1, $a1, %lo(D_800ED9E4)
/* 9F9C4 8009EDC4 2484D9D8 */  addiu      $a0, $a0, %lo(D_800ED9D8)
/* 9F9C8 8009EDC8 0C026E74 */  jal        __assert
/* 9F9CC 8009EDCC 24060133 */   addiu     $a2, $zero, 0x133
.L8009EDD0:
/* 9F9D0 8009EDD0 8FB90024 */  lw         $t9, 0x24($sp)
/* 9F9D4 8009EDD4 AF200000 */  sw         $zero, ($t9)
/* 9F9D8 8009EDD8 8FA80020 */  lw         $t0, 0x20($sp)
/* 9F9DC 8009EDDC 8D090000 */  lw         $t1, ($t0)
/* 9F9E0 8009EDE0 11200017 */  beqz       $t1, .L8009EE40
/* 9F9E4 8009EDE4 AFA90018 */   sw        $t1, 0x18($sp)
.L8009EDE8:
/* 9F9E8 8009EDE8 8FAA0018 */  lw         $t2, 0x18($sp)
/* 9F9EC 8009EDEC 8FAC0020 */  lw         $t4, 0x20($sp)
/* 9F9F0 8009EDF0 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9F9F4 8009EDF4 8D4B0010 */  lw         $t3, 0x10($t2)
/* 9F9F8 8009EDF8 8D8D0020 */  lw         $t5, 0x20($t4)
/* 9F9FC 8009EDFC 016D7023 */  subu       $t6, $t3, $t5
/* 9FA00 8009EE00 01CF082A */  slt        $at, $t6, $t7
/* 9FA04 8009EE04 1020000A */  beqz       $at, .L8009EE30
/* 9FA08 8009EE08 00000000 */   nop
/* 9FA0C 8009EE0C 8FB80018 */  lw         $t8, 0x18($sp)
/* 9FA10 8009EE10 8FB90024 */  lw         $t9, 0x24($sp)
/* 9FA14 8009EE14 AF380000 */  sw         $t8, ($t9)
/* 9FA18 8009EE18 8FA80018 */  lw         $t0, 0x18($sp)
/* 9FA1C 8009EE1C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9FA20 8009EE20 8D090010 */  lw         $t1, 0x10($t0)
/* 9FA24 8009EE24 8D4C0020 */  lw         $t4, 0x20($t2)
/* 9FA28 8009EE28 012C5823 */  subu       $t3, $t1, $t4
/* 9FA2C 8009EE2C AFAB001C */  sw         $t3, 0x1c($sp)
.L8009EE30:
/* 9FA30 8009EE30 8FAD0018 */  lw         $t5, 0x18($sp)
/* 9FA34 8009EE34 8DAE0000 */  lw         $t6, ($t5)
/* 9FA38 8009EE38 15C0FFEB */  bnez       $t6, .L8009EDE8
/* 9FA3C 8009EE3C AFAE0018 */   sw        $t6, 0x18($sp)
.L8009EE40:
/* 9FA40 8009EE40 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9FA44 8009EE44 8DF80000 */  lw         $t8, ($t7)
/* 9FA48 8009EE48 10000003 */  b          .L8009EE58
/* 9FA4C 8009EE4C 8F020010 */   lw        $v0, 0x10($t8)
/* 9FA50 8009EE50 10000001 */  b          .L8009EE58
/* 9FA54 8009EE54 00000000 */   nop
.L8009EE58:
/* 9FA58 8009EE58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FA5C 8009EE5C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9FA60 8009EE60 03E00008 */  jr         $ra
/* 9FA64 8009EE64 00000000 */   nop
/* 9FA68 8009EE68 00000000 */  nop
/* 9FA6C 8009EE6C 00000000 */  nop
