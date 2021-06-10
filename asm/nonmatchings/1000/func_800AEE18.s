glabel func_800AEE18
/* AFA18 800AEE18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AFA1C 800AEE1C AFBF001C */  sw         $ra, 0x1c($sp)
/* AFA20 800AEE20 AFA40020 */  sw         $a0, 0x20($sp)
/* AFA24 800AEE24 AFA50024 */  sw         $a1, 0x24($sp)
/* AFA28 800AEE28 3C05800B */  lui        $a1, %hi(func_800B0B50)
/* AFA2C 800AEE2C 3C06800B */  lui        $a2, %hi(func_800B12D8)
/* AFA30 800AEE30 24C612D8 */  addiu      $a2, $a2, %lo(func_800B12D8)
/* AFA34 800AEE34 24A50B50 */  addiu      $a1, $a1, %lo(func_800B0B50)
/* AFA38 800AEE38 8FA40020 */  lw         $a0, 0x20($sp)
/* AFA3C 800AEE3C 0C02DF34 */  jal        func_800B7CD0
/* AFA40 800AEE40 24070004 */   addiu     $a3, $zero, 4
/* AFA44 800AEE44 3C04800F */  lui        $a0, %hi(D_800EE488)
/* AFA48 800AEE48 240E0050 */  addiu      $t6, $zero, 0x50
/* AFA4C 800AEE4C AFAE0010 */  sw         $t6, 0x10($sp)
/* AFA50 800AEE50 2484E488 */  addiu      $a0, $a0, %lo(D_800EE488)
/* AFA54 800AEE54 240500CE */  addiu      $a1, $zero, 0xce
/* AFA58 800AEE58 8FA60024 */  lw         $a2, 0x24($sp)
/* AFA5C 800AEE5C 0C026ECC */  jal        func_8009BB30
/* AFA60 800AEE60 24070001 */   addiu     $a3, $zero, 1
/* AFA64 800AEE64 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFA68 800AEE68 ADE20014 */  sw         $v0, 0x14($t7)
/* AFA6C 800AEE6C 8FB90020 */  lw         $t9, 0x20($sp)
/* AFA70 800AEE70 24180001 */  addiu      $t8, $zero, 1
/* AFA74 800AEE74 AF380038 */  sw         $t8, 0x38($t9)
/* AFA78 800AEE78 8FA80020 */  lw         $t0, 0x20($sp)
/* AFA7C 800AEE7C AD000048 */  sw         $zero, 0x48($t0)
/* AFA80 800AEE80 8FAA0020 */  lw         $t2, 0x20($sp)
/* AFA84 800AEE84 24090001 */  addiu      $t1, $zero, 1
/* AFA88 800AEE88 A549001A */  sh         $t1, 0x1a($t2)
/* AFA8C 800AEE8C 8FAC0020 */  lw         $t4, 0x20($sp)
/* AFA90 800AEE90 240B0001 */  addiu      $t3, $zero, 1
/* AFA94 800AEE94 A58B0028 */  sh         $t3, 0x28($t4)
/* AFA98 800AEE98 8FAE0020 */  lw         $t6, 0x20($sp)
/* AFA9C 800AEE9C 240D0001 */  addiu      $t5, $zero, 1
/* AFAA0 800AEEA0 A5CD002E */  sh         $t5, 0x2e($t6)
/* AFAA4 800AEEA4 8FB80020 */  lw         $t8, 0x20($sp)
/* AFAA8 800AEEA8 240F0001 */  addiu      $t7, $zero, 1
/* AFAAC 800AEEAC A70F001C */  sh         $t7, 0x1c($t8)
/* AFAB0 800AEEB0 8FA80020 */  lw         $t0, 0x20($sp)
/* AFAB4 800AEEB4 24190001 */  addiu      $t9, $zero, 1
/* AFAB8 800AEEB8 A519001E */  sh         $t9, 0x1e($t0)
/* AFABC 800AEEBC 8FA90020 */  lw         $t1, 0x20($sp)
/* AFAC0 800AEEC0 A5200020 */  sh         $zero, 0x20($t1)
/* AFAC4 800AEEC4 8FAA0020 */  lw         $t2, 0x20($sp)
/* AFAC8 800AEEC8 A5400022 */  sh         $zero, 0x22($t2)
/* AFACC 800AEECC 8FAC0020 */  lw         $t4, 0x20($sp)
/* AFAD0 800AEED0 240B0001 */  addiu      $t3, $zero, 1
/* AFAD4 800AEED4 A58B0026 */  sh         $t3, 0x26($t4)
/* AFAD8 800AEED8 8FAD0020 */  lw         $t5, 0x20($sp)
/* AFADC 800AEEDC A5A00024 */  sh         $zero, 0x24($t5)
/* AFAE0 800AEEE0 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFAE4 800AEEE4 240E0001 */  addiu      $t6, $zero, 1
/* AFAE8 800AEEE8 A5EE0026 */  sh         $t6, 0x26($t7)
/* AFAEC 800AEEEC 8FB80020 */  lw         $t8, 0x20($sp)
/* AFAF0 800AEEF0 A7000024 */  sh         $zero, 0x24($t8)
/* AFAF4 800AEEF4 8FB90020 */  lw         $t9, 0x20($sp)
/* AFAF8 800AEEF8 AF200030 */  sw         $zero, 0x30($t9)
/* AFAFC 800AEEFC 8FA80020 */  lw         $t0, 0x20($sp)
/* AFB00 800AEF00 AD000034 */  sw         $zero, 0x34($t0)
/* AFB04 800AEF04 8FA90020 */  lw         $t1, 0x20($sp)
/* AFB08 800AEF08 A5200018 */  sh         $zero, 0x18($t1)
/* AFB0C 800AEF0C 8FAA0020 */  lw         $t2, 0x20($sp)
/* AFB10 800AEF10 AD40003C */  sw         $zero, 0x3c($t2)
/* AFB14 800AEF14 8FAB0020 */  lw         $t3, 0x20($sp)
/* AFB18 800AEF18 AD600040 */  sw         $zero, 0x40($t3)
/* AFB1C 800AEF1C 8FAC0020 */  lw         $t4, 0x20($sp)
/* AFB20 800AEF20 AD800044 */  sw         $zero, 0x44($t4)
/* AFB24 800AEF24 10000001 */  b          .L800AEF2C
/* AFB28 800AEF28 00000000 */   nop
.L800AEF2C:
/* AFB2C 800AEF2C 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFB30 800AEF30 27BD0020 */  addiu      $sp, $sp, 0x20
/* AFB34 800AEF34 03E00008 */  jr         $ra
/* AFB38 800AEF38 00000000 */   nop
