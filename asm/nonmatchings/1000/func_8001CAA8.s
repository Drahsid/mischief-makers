glabel func_8001CAA8
/* 1D6A8 8001CAA8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1D6AC 8001CAAC AFB40028 */  sw         $s4, 0x28($sp)
/* 1D6B0 8001CAB0 AFB30024 */  sw         $s3, 0x24($sp)
/* 1D6B4 8001CAB4 AFB20020 */  sw         $s2, 0x20($sp)
/* 1D6B8 8001CAB8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1D6BC 8001CABC AFB00018 */  sw         $s0, 0x18($sp)
/* 1D6C0 8001CAC0 3090FFFF */  andi       $s0, $a0, 0xffff
/* 1D6C4 8001CAC4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D6C8 8001CAC8 AFA40038 */  sw         $a0, 0x38($sp)
/* 1D6CC 8001CACC 00008825 */  or         $s1, $zero, $zero
/* 1D6D0 8001CAD0 27B20034 */  addiu      $s2, $sp, 0x34
/* 1D6D4 8001CAD4 27B30032 */  addiu      $s3, $sp, 0x32
/* 1D6D8 8001CAD8 27B40030 */  addiu      $s4, $sp, 0x30
.L8001CADC:
/* 1D6DC 8001CADC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 1D6E0 8001CAE0 02402825 */  or         $a1, $s2, $zero
/* 1D6E4 8001CAE4 02603025 */  or         $a2, $s3, $zero
/* 1D6E8 8001CAE8 0C006C1E */  jal        func_8001B078
/* 1D6EC 8001CAEC 02803825 */   or        $a3, $s4, $zero
/* 1D6F0 8001CAF0 97AE0034 */  lhu        $t6, 0x34($sp)
/* 1D6F4 8001CAF4 26310001 */  addiu      $s1, $s1, 1
/* 1D6F8 8001CAF8 29C10006 */  slti       $at, $t6, 6
/* 1D6FC 8001CAFC 14200004 */  bnez       $at, .L8001CB10
/* 1D700 8001CB00 3239FFFF */   andi      $t9, $s1, 0xffff
/* 1D704 8001CB04 26100001 */  addiu      $s0, $s0, 1
/* 1D708 8001CB08 320FFFFF */  andi       $t7, $s0, 0xffff
/* 1D70C 8001CB0C 01E08025 */  or         $s0, $t7, $zero
.L8001CB10:
/* 1D710 8001CB10 26100001 */  addiu      $s0, $s0, 1
/* 1D714 8001CB14 2B210007 */  slti       $at, $t9, 7
/* 1D718 8001CB18 3218FFFF */  andi       $t8, $s0, 0xffff
/* 1D71C 8001CB1C 03208825 */  or         $s1, $t9, $zero
/* 1D720 8001CB20 1420FFEE */  bnez       $at, .L8001CADC
/* 1D724 8001CB24 03008025 */   or        $s0, $t8, $zero
/* 1D728 8001CB28 2710FFFF */  addiu      $s0, $t8, -1
/* 1D72C 8001CB2C 3208FFFF */  andi       $t0, $s0, 0xffff
/* 1D730 8001CB30 01008025 */  or         $s0, $t0, $zero
/* 1D734 8001CB34 3105FFFF */  andi       $a1, $t0, 0xffff
/* 1D738 8001CB38 0C00722C */  jal        func_8001C8B0
/* 1D73C 8001CB3C 24040006 */   addiu     $a0, $zero, 6
/* 1D740 8001CB40 24040006 */  addiu      $a0, $zero, 6
/* 1D744 8001CB44 0C00725F */  jal        func_8001C97C
/* 1D748 8001CB48 3205FFFF */   andi      $a1, $s0, 0xffff
/* 1D74C 8001CB4C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D750 8001CB50 8FB00018 */  lw         $s0, 0x18($sp)
/* 1D754 8001CB54 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1D758 8001CB58 8FB20020 */  lw         $s2, 0x20($sp)
/* 1D75C 8001CB5C 8FB30024 */  lw         $s3, 0x24($sp)
/* 1D760 8001CB60 8FB40028 */  lw         $s4, 0x28($sp)
/* 1D764 8001CB64 03E00008 */  jr         $ra
/* 1D768 8001CB68 27BD0038 */   addiu     $sp, $sp, 0x38
