glabel func_80030E58
/* 31A58 80030E58 308EFFFF */  andi       $t6, $a0, 0xffff
/* 31A5C 80030E5C 000E7880 */  sll        $t7, $t6, 2
/* 31A60 80030E60 01EE7823 */  subu       $t7, $t7, $t6
/* 31A64 80030E64 000F7880 */  sll        $t7, $t7, 2
/* 31A68 80030E68 01EE7821 */  addu       $t7, $t7, $t6
/* 31A6C 80030E6C 000F7880 */  sll        $t7, $t7, 2
/* 31A70 80030E70 01EE7823 */  subu       $t7, $t7, $t6
/* 31A74 80030E74 3C18800F */  lui        $t8, %hi(gActors)
/* 31A78 80030E78 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 31A7C 80030E7C 000F78C0 */  sll        $t7, $t7, 3
/* 31A80 80030E80 01F81821 */  addu       $v1, $t7, $t8
/* 31A84 80030E84 8C790108 */  lw         $t9, 0x108($v1)
/* 31A88 80030E88 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 31A8C 80030E8C 2728FFFF */  addiu      $t0, $t9, -1
/* 31A90 80030E90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 31A94 80030E94 AFA40028 */  sw         $a0, 0x28($sp)
/* 31A98 80030E98 1D00003A */  bgtz       $t0, .L80030F84
/* 31A9C 80030E9C AC680108 */   sw        $t0, 0x108($v1)
/* 31AA0 80030EA0 240A0002 */  addiu      $t2, $zero, 2
/* 31AA4 80030EA4 3C04800E */  lui        $a0, %hi(D_800E1540)
/* 31AA8 80030EA8 84650088 */  lh         $a1, 0x88($v1)
/* 31AAC 80030EAC 8466008C */  lh         $a2, 0x8c($v1)
/* 31AB0 80030EB0 84670090 */  lh         $a3, 0x90($v1)
/* 31AB4 80030EB4 AC6A0108 */  sw         $t2, 0x108($v1)
/* 31AB8 80030EB8 24841540 */  addiu      $a0, $a0, %lo(D_800E1540)
/* 31ABC 80030EBC 0C00C48F */  jal        func_8003123C
/* 31AC0 80030EC0 AFA30020 */   sw        $v1, 0x20($sp)
/* 31AC4 80030EC4 8FA30020 */  lw         $v1, 0x20($sp)
/* 31AC8 80030EC8 1040002E */  beqz       $v0, .L80030F84
/* 31ACC 80030ECC 3044FFFF */   andi      $a0, $v0, 0xffff
/* 31AD0 80030ED0 00045880 */  sll        $t3, $a0, 2
/* 31AD4 80030ED4 01645823 */  subu       $t3, $t3, $a0
/* 31AD8 80030ED8 000B5880 */  sll        $t3, $t3, 2
/* 31ADC 80030EDC 01645821 */  addu       $t3, $t3, $a0
/* 31AE0 80030EE0 000B5880 */  sll        $t3, $t3, 2
/* 31AE4 80030EE4 01645823 */  subu       $t3, $t3, $a0
/* 31AE8 80030EE8 3C0C800F */  lui        $t4, %hi(gActors)
/* 31AEC 80030EEC 3C01800F */  lui        $at, %hi(D_800EB928)
/* 31AF0 80030EF0 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 31AF4 80030EF4 000B58C0 */  sll        $t3, $t3, 3
/* 31AF8 80030EF8 C420B928 */  lwc1       $f0, %lo(D_800EB928)($at)
/* 31AFC 80030EFC 016C1021 */  addu       $v0, $t3, $t4
/* 31B00 80030F00 240D0001 */  addiu      $t5, $zero, 1
/* 31B04 80030F04 240E0003 */  addiu      $t6, $zero, 3
/* 31B08 80030F08 A44D0094 */  sh         $t5, 0x94($v0)
/* 31B0C 80030F0C AC4E0080 */  sw         $t6, 0x80($v0)
/* 31B10 80030F10 E4400110 */  swc1       $f0, 0x110($v0)
/* 31B14 80030F14 E4400114 */  swc1       $f0, 0x114($v0)
/* 31B18 80030F18 8C6F00EC */  lw         $t7, 0xec($v1)
/* 31B1C 80030F1C 240B1000 */  addiu      $t3, $zero, 0x1000
/* 31B20 80030F20 000FC023 */  negu       $t8, $t7
/* 31B24 80030F24 07010003 */  bgez       $t8, .L80030F34
/* 31B28 80030F28 0018C843 */   sra       $t9, $t8, 1
/* 31B2C 80030F2C 27010001 */  addiu      $at, $t8, 1
/* 31B30 80030F30 0001C843 */  sra        $t9, $at, 1
.L80030F34:
/* 31B34 80030F34 AC5900EC */  sw         $t9, 0xec($v0)
/* 31B38 80030F38 8C6800F0 */  lw         $t0, 0xf0($v1)
/* 31B3C 80030F3C 240CFFEE */  addiu      $t4, $zero, -0x12
/* 31B40 80030F40 00084823 */  negu       $t1, $t0
/* 31B44 80030F44 05210003 */  bgez       $t1, .L80030F54
/* 31B48 80030F48 00095043 */   sra       $t2, $t1, 1
/* 31B4C 80030F4C 25210001 */  addiu      $at, $t1, 1
/* 31B50 80030F50 00015043 */  sra        $t2, $at, 1
.L80030F54:
/* 31B54 80030F54 AC4A00F0 */  sw         $t2, 0xf0($v0)
/* 31B58 80030F58 AC4B015C */  sw         $t3, 0x15c($v0)
/* 31B5C 80030F5C AC4C0154 */  sw         $t4, 0x154($v0)
/* 31B60 80030F60 AFA2001C */  sw         $v0, 0x1c($sp)
/* 31B64 80030F64 0C00ABAD */  jal        func_8002AEB4
/* 31B68 80030F68 2405007F */   addiu     $a1, $zero, 0x7f
/* 31B6C 80030F6C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 31B70 80030F70 3C0E8003 */  lui        $t6, %hi(func_80030A24)
/* 31B74 80030F74 240DFFE0 */  addiu      $t5, $zero, -0x20
/* 31B78 80030F78 25CE0A24 */  addiu      $t6, $t6, %lo(func_80030A24)
/* 31B7C 80030F7C AC4D0104 */  sw         $t5, 0x104($v0)
/* 31B80 80030F80 AC4E017C */  sw         $t6, 0x17c($v0)
.L80030F84:
/* 31B84 80030F84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 31B88 80030F88 27BD0028 */  addiu      $sp, $sp, 0x28
/* 31B8C 80030F8C 03E00008 */  jr         $ra
/* 31B90 80030F90 00000000 */   nop
