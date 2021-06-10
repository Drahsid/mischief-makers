glabel func_800AE2D0
/* AEED0 800AE2D0 27BDFFF8 */  addiu      $sp, $sp, -8
/* AEED4 800AE2D4 3C013F80 */  lui        $at, 0x3f80
/* AEED8 800AE2D8 44812000 */  mtc1       $at, $f4
/* AEEDC 800AE2DC 00000000 */  nop
/* AEEE0 800AE2E0 E7A40000 */  swc1       $f4, ($sp)
/* AEEE4 800AE2E4 04800005 */  bltz       $a0, .L800AE2FC
/* AEEE8 800AE2E8 00000000 */   nop
/* AEEEC 800AE2EC 3C01800F */  lui        $at, %hi(D_800EE380)
/* AEEF0 800AE2F0 C426E380 */  lwc1       $f6, %lo(D_800EE380)($at)
/* AEEF4 800AE2F4 10000005 */  b          .L800AE30C
/* AEEF8 800AE2F8 E7A60004 */   swc1      $f6, 4($sp)
.L800AE2FC:
/* AEEFC 800AE2FC 3C01800F */  lui        $at, %hi(D_800EE384)
/* AEF00 800AE300 C428E384 */  lwc1       $f8, %lo(D_800EE384)($at)
/* AEF04 800AE304 E7A80004 */  swc1       $f8, 4($sp)
/* AEF08 800AE308 00042023 */  negu       $a0, $a0
.L800AE30C:
/* AEF0C 800AE30C 1080000F */  beqz       $a0, .L800AE34C
/* AEF10 800AE310 00000000 */   nop
.L800AE314:
/* AEF14 800AE314 308E0001 */  andi       $t6, $a0, 1
/* AEF18 800AE318 11C00005 */  beqz       $t6, .L800AE330
/* AEF1C 800AE31C 00000000 */   nop
/* AEF20 800AE320 C7AA0000 */  lwc1       $f10, ($sp)
/* AEF24 800AE324 C7B00004 */  lwc1       $f16, 4($sp)
/* AEF28 800AE328 46105482 */  mul.s      $f18, $f10, $f16
/* AEF2C 800AE32C E7B20000 */  swc1       $f18, ($sp)
.L800AE330:
/* AEF30 800AE330 C7A40004 */  lwc1       $f4, 4($sp)
/* AEF34 800AE334 46042182 */  mul.s      $f6, $f4, $f4
/* AEF38 800AE338 E7A60004 */  swc1       $f6, 4($sp)
/* AEF3C 800AE33C 00047843 */  sra        $t7, $a0, 1
/* AEF40 800AE340 01E02025 */  or         $a0, $t7, $zero
/* AEF44 800AE344 1480FFF3 */  bnez       $a0, .L800AE314
/* AEF48 800AE348 00000000 */   nop
.L800AE34C:
/* AEF4C 800AE34C 10000003 */  b          .L800AE35C
/* AEF50 800AE350 C7A00000 */   lwc1      $f0, ($sp)
/* AEF54 800AE354 10000001 */  b          .L800AE35C
/* AEF58 800AE358 00000000 */   nop
.L800AE35C:
/* AEF5C 800AE35C 03E00008 */  jr         $ra
/* AEF60 800AE360 27BD0008 */   addiu     $sp, $sp, 8
/* AEF64 800AE364 00000000 */  nop
/* AEF68 800AE368 00000000 */  nop
/* AEF6C 800AE36C 00000000 */  nop
