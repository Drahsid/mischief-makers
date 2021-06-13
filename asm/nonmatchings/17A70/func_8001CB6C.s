glabel func_8001CB6C
/* 1D76C 8001CB6C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1D770 8001CB70 AFB40028 */  sw         $s4, 0x28($sp)
/* 1D774 8001CB74 AFB30024 */  sw         $s3, 0x24($sp)
/* 1D778 8001CB78 AFB20020 */  sw         $s2, 0x20($sp)
/* 1D77C 8001CB7C AFB1001C */  sw         $s1, 0x1c($sp)
/* 1D780 8001CB80 AFB00018 */  sw         $s0, 0x18($sp)
/* 1D784 8001CB84 3090FFFF */  andi       $s0, $a0, 0xffff
/* 1D788 8001CB88 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D78C 8001CB8C AFA40038 */  sw         $a0, 0x38($sp)
/* 1D790 8001CB90 00008825 */  or         $s1, $zero, $zero
/* 1D794 8001CB94 27B20034 */  addiu      $s2, $sp, 0x34
/* 1D798 8001CB98 27B30032 */  addiu      $s3, $sp, 0x32
/* 1D79C 8001CB9C 27B40030 */  addiu      $s4, $sp, 0x30
.L8001CBA0:
/* 1D7A0 8001CBA0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 1D7A4 8001CBA4 02402825 */  or         $a1, $s2, $zero
/* 1D7A8 8001CBA8 02603025 */  or         $a2, $s3, $zero
/* 1D7AC 8001CBAC 0C006C1E */  jal        func_8001B078
/* 1D7B0 8001CBB0 02803825 */   or        $a3, $s4, $zero
/* 1D7B4 8001CBB4 97AE0034 */  lhu        $t6, 0x34($sp)
/* 1D7B8 8001CBB8 3224FFFF */  andi       $a0, $s1, 0xffff
/* 1D7BC 8001CBBC 29C10006 */  slti       $at, $t6, 6
/* 1D7C0 8001CBC0 14200005 */  bnez       $at, .L8001CBD8
/* 1D7C4 8001CBC4 3205FFFF */   andi      $a1, $s0, 0xffff
/* 1D7C8 8001CBC8 26100001 */  addiu      $s0, $s0, 1
/* 1D7CC 8001CBCC 320FFFFF */  andi       $t7, $s0, 0xffff
/* 1D7D0 8001CBD0 01E08025 */  or         $s0, $t7, $zero
/* 1D7D4 8001CBD4 3205FFFF */  andi       $a1, $s0, 0xffff
.L8001CBD8:
/* 1D7D8 8001CBD8 26100001 */  addiu      $s0, $s0, 1
/* 1D7DC 8001CBDC 3218FFFF */  andi       $t8, $s0, 0xffff
/* 1D7E0 8001CBE0 0C00725F */  jal        func_8001C97C
/* 1D7E4 8001CBE4 03008025 */   or        $s0, $t8, $zero
/* 1D7E8 8001CBE8 26310001 */  addiu      $s1, $s1, 1
/* 1D7EC 8001CBEC 3239FFFF */  andi       $t9, $s1, 0xffff
/* 1D7F0 8001CBF0 2B210007 */  slti       $at, $t9, 7
/* 1D7F4 8001CBF4 1420FFEA */  bnez       $at, .L8001CBA0
/* 1D7F8 8001CBF8 03208825 */   or        $s1, $t9, $zero
/* 1D7FC 8001CBFC 2610FFFF */  addiu      $s0, $s0, -1
/* 1D800 8001CC00 3208FFFF */  andi       $t0, $s0, 0xffff
/* 1D804 8001CC04 01008025 */  or         $s0, $t0, $zero
/* 1D808 8001CC08 3105FFFF */  andi       $a1, $t0, 0xffff
/* 1D80C 8001CC0C 0C00722C */  jal        func_8001C8B0
/* 1D810 8001CC10 24040006 */   addiu     $a0, $zero, 6
/* 1D814 8001CC14 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D818 8001CC18 8FB00018 */  lw         $s0, 0x18($sp)
/* 1D81C 8001CC1C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1D820 8001CC20 8FB20020 */  lw         $s2, 0x20($sp)
/* 1D824 8001CC24 8FB30024 */  lw         $s3, 0x24($sp)
/* 1D828 8001CC28 8FB40028 */  lw         $s4, 0x28($sp)
/* 1D82C 8001CC2C 03E00008 */  jr         $ra
/* 1D830 8001CC30 27BD0038 */   addiu     $sp, $sp, 0x38
