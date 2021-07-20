glabel func_8003FD0C
/* 4090C 8003FD0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40910 8003FD10 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40914 8003FD14 AFA50024 */  sw         $a1, 0x24($sp)
/* 40918 8003FD18 AFA60028 */  sw         $a2, 0x28($sp)
/* 4091C 8003FD1C AFA7002C */  sw         $a3, 0x2c($sp)
/* 40920 8003FD20 00057400 */  sll        $t6, $a1, 0x10
/* 40924 8003FD24 0006C400 */  sll        $t8, $a2, 0x10
/* 40928 8003FD28 00074C00 */  sll        $t1, $a3, 0x10
/* 4092C 8003FD2C 00093C03 */  sra        $a3, $t1, 0x10
/* 40930 8003FD30 00183403 */  sra        $a2, $t8, 0x10
/* 40934 8003FD34 000E2C03 */  sra        $a1, $t6, 0x10
/* 40938 8003FD38 E7AC0020 */  swc1       $f12, 0x20($sp)
/* 4093C 8003FD3C 0C00C4A1 */  jal        func_80031284
/* 40940 8003FD40 240400CE */   addiu     $a0, $zero, 0xce
/* 40944 8003FD44 1040003D */  beqz       $v0, .L8003FE3C
/* 40948 8003FD48 3046FFFF */   andi      $a2, $v0, 0xffff
/* 4094C 8003FD4C 97A40032 */  lhu        $a0, 0x32($sp)
/* 40950 8003FD50 24080198 */  addiu      $t0, $zero, 0x198
/* 40954 8003FD54 308B0003 */  andi       $t3, $a0, 3
/* 40958 8003FD58 1160000E */  beqz       $t3, .L8003FD94
/* 4095C 8003FD5C 00000000 */   nop
/* 40960 8003FD60 00480019 */  multu      $v0, $t0
/* 40964 8003FD64 3C07800F */  lui        $a3, %hi(gActors)
/* 40968 8003FD68 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 4096C 8003FD6C 240D0301 */  addiu      $t5, $zero, 0x301
/* 40970 8003FD70 000B7080 */  sll        $t6, $t3, 2
/* 40974 8003FD74 3C0F800D */  lui        $t7, %hi(D_800D19F4)
/* 40978 8003FD78 01EE7821 */  addu       $t7, $t7, $t6
/* 4097C 8003FD7C 00006012 */  mflo       $t4
/* 40980 8003FD80 00EC1821 */  addu       $v1, $a3, $t4
/* 40984 8003FD84 A46D0094 */  sh         $t5, 0x94($v1)
/* 40988 8003FD88 8DEF19F4 */  lw         $t7, %lo(D_800D19F4)($t7)
/* 4098C 8003FD8C 10000009 */  b          .L8003FDB4
/* 40990 8003FD90 AC6F018C */   sw        $t7, 0x18c($v1)
.L8003FD94:
/* 40994 8003FD94 24080198 */  addiu      $t0, $zero, 0x198
/* 40998 8003FD98 00480019 */  multu      $v0, $t0
/* 4099C 8003FD9C 3C07800F */  lui        $a3, %hi(gActors)
/* 409A0 8003FDA0 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 409A4 8003FDA4 24180101 */  addiu      $t8, $zero, 0x101
/* 409A8 8003FDA8 0000C812 */  mflo       $t9
/* 409AC 8003FDAC 00F94821 */  addu       $t1, $a3, $t9
/* 409B0 8003FDB0 A5380094 */  sh         $t8, 0x94($t1)
.L8003FDB4:
/* 409B4 8003FDB4 00C80019 */  multu      $a2, $t0
/* 409B8 8003FDB8 44800000 */  mtc1       $zero, $f0
/* 409BC 8003FDBC 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 409C0 8003FDC0 2405003F */  addiu      $a1, $zero, 0x3f
/* 409C4 8003FDC4 A7A6001E */  sh         $a2, 0x1e($sp)
/* 409C8 8003FDC8 00005012 */  mflo       $t2
/* 409CC 8003FDCC 00EA1021 */  addu       $v0, $a3, $t2
/* 409D0 8003FDD0 AFA20018 */  sw         $v0, 0x18($sp)
/* 409D4 8003FDD4 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 409D8 8003FDD8 0C00ABAD */  jal        func_8002AEB4
/* 409DC 8003FDDC E44000B8 */   swc1      $f0, 0xb8($v0)
/* 409E0 8003FDE0 8FA20018 */  lw         $v0, 0x18($sp)
/* 409E4 8003FDE4 240BFFEE */  addiu      $t3, $zero, -0x12
/* 409E8 8003FDE8 3C01800F */  lui        $at, %hi(D_800EBCA4)
/* 409EC 8003FDEC AC4B0154 */  sw         $t3, 0x154($v0)
/* 409F0 8003FDF0 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 409F4 8003FDF4 C426BCA4 */  lwc1       $f6, %lo(D_800EBCA4)($at)
/* 409F8 8003FDF8 C427BCA0 */  lwc1       $f7, -0x4360($at)
/* 409FC 8003FDFC 46002021 */  cvt.d.s    $f0, $f4
/* 40A00 8003FE00 46260202 */  mul.d      $f8, $f0, $f6
/* 40A04 8003FE04 3C01800F */  lui        $at, %hi(D_800EBCAC)
/* 40A08 8003FE08 97A6001E */  lhu        $a2, 0x1e($sp)
/* 40A0C 8003FE0C 462040A0 */  cvt.s.d    $f2, $f8
/* 40A10 8003FE10 E4420110 */  swc1       $f2, 0x110($v0)
/* 40A14 8003FE14 C42ABCAC */  lwc1       $f10, %lo(D_800EBCAC)($at)
/* 40A18 8003FE18 C42BBCA8 */  lwc1       $f11, -0x4358($at)
/* 40A1C 8003FE1C 3C014140 */  lui        $at, 0x4140
/* 40A20 8003FE20 462A0402 */  mul.d      $f16, $f0, $f10
/* 40A24 8003FE24 44819000 */  mtc1       $at, $f18
/* 40A28 8003FE28 E4420114 */  swc1       $f2, 0x114($v0)
/* 40A2C 8003FE2C E4520148 */  swc1       $f18, 0x148($v0)
/* 40A30 8003FE30 46208320 */  cvt.s.d    $f12, $f16
/* 40A34 8003FE34 E44C0118 */  swc1       $f12, 0x118($v0)
/* 40A38 8003FE38 E44C011C */  swc1       $f12, 0x11c($v0)
.L8003FE3C:
/* 40A3C 8003FE3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40A40 8003FE40 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40A44 8003FE44 03E00008 */  jr         $ra
/* 40A48 8003FE48 00C01025 */   or        $v0, $a2, $zero
