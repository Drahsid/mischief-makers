glabel func_80045E58
/* 46A58 80045E58 3C08800F */  lui        $t0, %hi(gActors)
/* 46A5C 80045E5C 3C07800D */  lui        $a3, %hi(D_800D361C)
/* 46A60 80045E60 00803025 */  or         $a2, $a0, $zero
/* 46A64 80045E64 24E7361C */  addiu      $a3, $a3, %lo(D_800D361C)
/* 46A68 80045E68 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 46A6C 80045E6C 00001825 */  or         $v1, $zero, $zero
/* 46A70 80045E70 24090198 */  addiu      $t1, $zero, 0x198
/* 46A74 80045E74 00037040 */  sll        $t6, $v1, 1
.L80045E78:
/* 46A78 80045E78 00EE2021 */  addu       $a0, $a3, $t6
/* 46A7C 80045E7C 94820000 */  lhu        $v0, ($a0)
/* 46A80 80045E80 00000000 */  nop
/* 46A84 80045E84 10400019 */  beqz       $v0, .L80045EEC
/* 46A88 80045E88 00000000 */   nop
/* 46A8C 80045E8C 00490019 */  multu      $v0, $t1
/* 46A90 80045E90 00007812 */  mflo       $t7
/* 46A94 80045E94 010F2821 */  addu       $a1, $t0, $t7
/* 46A98 80045E98 8CB80080 */  lw         $t8, 0x80($a1)
/* 46A9C 80045E9C 00000000 */  nop
/* 46AA0 80045EA0 1300000A */  beqz       $t8, .L80045ECC
/* 46AA4 80045EA4 00000000 */   nop
/* 46AA8 80045EA8 94B900D2 */  lhu        $t9, 0xd2($a1)
/* 46AAC 80045EAC 948A0002 */  lhu        $t2, 2($a0)
/* 46AB0 80045EB0 00000000 */  nop
/* 46AB4 80045EB4 172A0005 */  bne        $t9, $t2, .L80045ECC
/* 46AB8 80045EB8 00000000 */   nop
/* 46ABC 80045EBC 84AB00E0 */  lh         $t3, 0xe0($a1)
/* 46AC0 80045EC0 00000000 */  nop
/* 46AC4 80045EC4 1560000A */  bnez       $t3, .L80045EF0
/* 46AC8 80045EC8 24620003 */   addiu     $v0, $v1, 3
.L80045ECC:
/* 46ACC 80045ECC 948C0004 */  lhu        $t4, 4($a0)
/* 46AD0 80045ED0 00000000 */  nop
/* 46AD4 80045ED4 000C6840 */  sll        $t5, $t4, 1
/* 46AD8 80045ED8 00CD1021 */  addu       $v0, $a2, $t5
/* 46ADC 80045EDC 944E0000 */  lhu        $t6, ($v0)
/* 46AE0 80045EE0 00000000 */  nop
/* 46AE4 80045EE4 35CF2000 */  ori        $t7, $t6, 0x2000
/* 46AE8 80045EE8 A44F0000 */  sh         $t7, ($v0)
.L80045EEC:
/* 46AEC 80045EEC 24620003 */  addiu      $v0, $v1, 3
.L80045EF0:
/* 46AF0 80045EF0 3043FFFF */  andi       $v1, $v0, 0xffff
/* 46AF4 80045EF4 28610060 */  slti       $at, $v1, 0x60
/* 46AF8 80045EF8 1420FFDF */  bnez       $at, .L80045E78
/* 46AFC 80045EFC 00037040 */   sll       $t6, $v1, 1
/* 46B00 80045F00 03E00008 */  jr         $ra
/* 46B04 80045F04 00000000 */   nop