glabel func_8003EDF4
/* 3F9F4 8003EDF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F9F8 8003EDF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F9FC 8003EDFC AFA5001C */  sw         $a1, 0x1c($sp)
/* 3FA00 8003EE00 AFA60020 */  sw         $a2, 0x20($sp)
/* 3FA04 8003EE04 AFA70024 */  sw         $a3, 0x24($sp)
/* 3FA08 8003EE08 00057400 */  sll        $t6, $a1, 0x10
/* 3FA0C 8003EE0C 0006C400 */  sll        $t8, $a2, 0x10
/* 3FA10 8003EE10 00074400 */  sll        $t0, $a3, 0x10
/* 3FA14 8003EE14 3C04800E */  lui        $a0, 0x800e
/* 3FA18 8003EE18 00083C03 */  sra        $a3, $t0, 0x10
/* 3FA1C 8003EE1C 00183403 */  sra        $a2, $t8, 0x10
/* 3FA20 8003EE20 000E2C03 */  sra        $a1, $t6, 0x10
/* 3FA24 8003EE24 E7AC0018 */  swc1       $f12, 0x18($sp)
/* 3FA28 8003EE28 0C00C48F */  jal        func_8003123C
/* 3FA2C 8003EE2C 24841604 */   addiu     $a0, $a0, 0x1604
/* 3FA30 8003EE30 1040001F */  beqz       $v0, .L8003EEB0
/* 3FA34 8003EE34 3044FFFF */   andi      $a0, $v0, 0xffff
/* 3FA38 8003EE38 00025080 */  sll        $t2, $v0, 2
/* 3FA3C 8003EE3C 01425023 */  subu       $t2, $t2, $v0
/* 3FA40 8003EE40 000A5080 */  sll        $t2, $t2, 2
/* 3FA44 8003EE44 01425021 */  addu       $t2, $t2, $v0
/* 3FA48 8003EE48 000A5080 */  sll        $t2, $t2, 2
/* 3FA4C 8003EE4C 01425023 */  subu       $t2, $t2, $v0
/* 3FA50 8003EE50 3C0B800F */  lui        $t3, %hi(D_800EF510)
/* 3FA54 8003EE54 256BF510 */  addiu      $t3, $t3, %lo(D_800EF510)
/* 3FA58 8003EE58 000A50C0 */  sll        $t2, $t2, 3
/* 3FA5C 8003EE5C 014B1821 */  addu       $v1, $t2, $t3
/* 3FA60 8003EE60 240C0001 */  addiu      $t4, $zero, 1
/* 3FA64 8003EE64 A46C0094 */  sh         $t4, 0x94($v1)
/* 3FA68 8003EE68 3C01800F */  lui        $at, %hi(D_800EBC10)
/* 3FA6C 8003EE6C C7A40018 */  lwc1       $f4, 0x18($sp)
/* 3FA70 8003EE70 C427BC10 */  lwc1       $f7, %lo(D_800EBC10)($at)
/* 3FA74 8003EE74 C426BC14 */  lwc1       $f6, -0x43ec($at)
/* 3FA78 8003EE78 46002021 */  cvt.d.s    $f0, $f4
/* 3FA7C 8003EE7C 46260202 */  mul.d      $f8, $f0, $f6
/* 3FA80 8003EE80 3C01800F */  lui        $at, %hi(D_800EBC1C)
/* 3FA84 8003EE84 240DFFF0 */  addiu      $t5, $zero, -0x10
/* 3FA88 8003EE88 462040A0 */  cvt.s.d    $f2, $f8
/* 3FA8C 8003EE8C E46200B4 */  swc1       $f2, 0xb4($v1)
/* 3FA90 8003EE90 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 3FA94 8003EE94 C42ABC1C */  lwc1       $f10, %lo(D_800EBC1C)($at)
/* 3FA98 8003EE98 C42BBC18 */  lwc1       $f11, -0x43e8($at)
/* 3FA9C 8003EE9C AC6D0154 */  sw         $t5, 0x154($v1)
/* 3FAA0 8003EEA0 462A0402 */  mul.d      $f16, $f0, $f10
/* 3FAA4 8003EEA4 46208320 */  cvt.s.d    $f12, $f16
/* 3FAA8 8003EEA8 E46C0110 */  swc1       $f12, 0x110($v1)
/* 3FAAC 8003EEAC E46C0114 */  swc1       $f12, 0x114($v1)
.L8003EEB0:
/* 3FAB0 8003EEB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3FAB4 8003EEB4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3FAB8 8003EEB8 03E00008 */  jr         $ra
/* 3FABC 8003EEBC 00801025 */   or        $v0, $a0, $zero
