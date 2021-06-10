glabel func_8009E540
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
/* 9F1C8 8009E5C8 0C026ECC */  jal        func_8009BB30
/* 9F1CC 8009E5CC 24070001 */   addiu     $a3, $zero, 1
/* 9F1D0 8009E5D0 AFA2002C */  sw         $v0, 0x2c($sp)
/* 9F1D4 8009E5D4 0C02BC63 */  jal        func_800AF18C
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
/* 9F200 8009E600 0C026ECC */  jal        func_8009BB30
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
/* 9F238 8009E638 0C026ECC */  jal        func_8009BB30
/* 9F23C 8009E63C 8FA60030 */   lw        $a2, 0x30($sp)
/* 9F240 8009E640 AFA20028 */  sw         $v0, 0x28($sp)
/* 9F244 8009E644 8FA90048 */  lw         $t1, 0x48($sp)
/* 9F248 8009E648 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9F24C 8009E64C 8FA50028 */  lw         $a1, 0x28($sp)
/* 9F250 8009E650 8D240034 */  lw         $a0, 0x34($t1)
/* 9F254 8009E654 0C02BC2F */  jal        func_800AF0BC
/* 9F258 8009E658 8D460004 */   lw        $a2, 4($t2)
/* 9F25C 8009E65C 3C04800F */  lui        $a0, %hi(D_800ED978)
/* 9F260 8009E660 240B0020 */  addiu      $t3, $zero, 0x20
/* 9F264 8009E664 AFAB0010 */  sw         $t3, 0x10($sp)
/* 9F268 8009E668 2484D978 */  addiu      $a0, $a0, %lo(D_800ED978)
/* 9F26C 8009E66C 2405004D */  addiu      $a1, $zero, 0x4d
/* 9F270 8009E670 8FA60030 */  lw         $a2, 0x30($sp)
/* 9F274 8009E674 0C026ECC */  jal        func_8009BB30
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
/* 9F2A0 8009E6A0 0C026ECC */  jal        func_8009BB30
/* 9F2A4 8009E6A4 8FA60030 */   lw        $a2, 0x30($sp)
/* 9F2A8 8009E6A8 AFA20028 */  sw         $v0, 0x28($sp)
/* 9F2AC 8009E6AC 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9F2B0 8009E6B0 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9F2B4 8009E6B4 8FA50028 */  lw         $a1, 0x28($sp)
/* 9F2B8 8009E6B8 8DE40030 */  lw         $a0, 0x30($t7)
/* 9F2BC 8009E6BC 0C02BC49 */  jal        func_800AF124
/* 9F2C0 8009E6C0 8F060004 */   lw        $a2, 4($t8)
/* 9F2C4 8009E6C4 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9F2C8 8009E6C8 9328001C */  lbu        $t0, 0x1c($t9)
/* 9F2CC 8009E6CC 11000008 */  beqz       $t0, .L8009E6F0
/* 9F2D0 8009E6D0 00000000 */   nop
/* 9F2D4 8009E6D4 8FA40048 */  lw         $a0, 0x48($sp)
/* 9F2D8 8009E6D8 00002825 */  or         $a1, $zero, $zero
/* 9F2DC 8009E6DC 8FA6004C */  lw         $a2, 0x4c($sp)
/* 9F2E0 8009E6E0 0C02BC78 */  jal        func_800AF1E0
/* 9F2E4 8009E6E4 8FA70030 */   lw        $a3, 0x30($sp)
/* 9F2E8 8009E6E8 10000006 */  b          .L8009E704
/* 9F2EC 8009E6EC 00000000 */   nop
.L8009E6F0:
/* 9F2F0 8009E6F0 8FA90048 */  lw         $t1, 0x48($sp)
/* 9F2F4 8009E6F4 24050002 */  addiu      $a1, $zero, 2
/* 9F2F8 8009E6F8 8D240030 */  lw         $a0, 0x30($t1)
/* 9F2FC 8009E6FC 0C02BD24 */  jal        func_800AF490
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
/* 9F350 8009E750 0C026ECC */  jal        func_8009BB30
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
/* 9F39C 8009E79C 0C026EAE */  jal        func_8009BAB8
/* 9F3A0 8009E7A0 24A50004 */   addiu     $a1, $a1, 4
/* 9F3A4 8009E7A4 8FAE003C */  lw         $t6, 0x3c($sp)
/* 9F3A8 8009E7A8 ADC00008 */  sw         $zero, 8($t6)
/* 9F3AC 8009E7AC 8FA4003C */  lw         $a0, 0x3c($sp)
/* 9F3B0 8009E7B0 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9F3B4 8009E7B4 8FA60030 */  lw         $a2, 0x30($sp)
/* 9F3B8 8009E7B8 24840010 */  addiu      $a0, $a0, 0x10
/* 9F3BC 8009E7BC 0C02BBCF */  jal        func_800AEF3C
/* 9F3C0 8009E7C0 8DE50024 */   lw        $a1, 0x24($t7)
/* 9F3C4 8009E7C4 8FA4003C */  lw         $a0, 0x3c($sp)
/* 9F3C8 8009E7C8 24050001 */  addiu      $a1, $zero, 1
/* 9F3CC 8009E7CC 00003025 */  or         $a2, $zero, $zero
/* 9F3D0 8009E7D0 0C02C07D */  jal        func_800B01F4
/* 9F3D4 8009E7D4 24840010 */   addiu     $a0, $a0, 0x10
/* 9F3D8 8009E7D8 8FA4003C */  lw         $a0, 0x3c($sp)
/* 9F3DC 8009E7DC 8FA50030 */  lw         $a1, 0x30($sp)
/* 9F3E0 8009E7E0 0C02BC02 */  jal        func_800AF008
/* 9F3E4 8009E7E4 24840058 */   addiu     $a0, $a0, 0x58
/* 9F3E8 8009E7E8 8FB8003C */  lw         $t8, 0x3c($sp)
/* 9F3EC 8009E7EC 24050001 */  addiu      $a1, $zero, 1
/* 9F3F0 8009E7F0 27040058 */  addiu      $a0, $t8, 0x58
/* 9F3F4 8009E7F4 0C02C270 */  jal        func_800B09C0
/* 9F3F8 8009E7F8 27060010 */   addiu     $a2, $t8, 0x10
/* 9F3FC 8009E7FC 8FA4003C */  lw         $a0, 0x3c($sp)
/* 9F400 8009E800 8FA50030 */  lw         $a1, 0x30($sp)
/* 9F404 8009E804 0C02BB86 */  jal        func_800AEE18
/* 9F408 8009E808 2484008C */   addiu     $a0, $a0, 0x8c
/* 9F40C 8009E80C 8FB9003C */  lw         $t9, 0x3c($sp)
/* 9F410 8009E810 24050001 */  addiu      $a1, $zero, 1
/* 9F414 8009E814 2724008C */  addiu      $a0, $t9, 0x8c
/* 9F418 8009E818 0C02C4B6 */  jal        func_800B12D8
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
/* 9F470 8009E870 0C02C855 */  jal        func_800B2154
/* 9F474 8009E874 8DE60030 */   lw        $a2, 0x30($t7)
/* 9F478 8009E878 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9F47C 8009E87C 3C04800F */  lui        $a0, %hi(D_800ED9C0)
/* 9F480 8009E880 2419001C */  addiu      $t9, $zero, 0x1c
/* 9F484 8009E884 8F070008 */  lw         $a3, 8($t8)
/* 9F488 8009E888 AFB90010 */  sw         $t9, 0x10($sp)
/* 9F48C 8009E88C 2484D9C0 */  addiu      $a0, $a0, %lo(D_800ED9C0)
/* 9F490 8009E890 2405007F */  addiu      $a1, $zero, 0x7f
/* 9F494 8009E894 0C026ECC */  jal        func_8009BB30
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
