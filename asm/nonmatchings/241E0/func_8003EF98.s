glabel func_8003EF98
/* 3FB98 8003EF98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3FB9C 8003EF9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FBA0 8003EFA0 AFA50024 */  sw         $a1, 0x24($sp)
/* 3FBA4 8003EFA4 AFA60028 */  sw         $a2, 0x28($sp)
/* 3FBA8 8003EFA8 AFA7002C */  sw         $a3, 0x2c($sp)
/* 3FBAC 8003EFAC 00057400 */  sll        $t6, $a1, 0x10
/* 3FBB0 8003EFB0 0006C400 */  sll        $t8, $a2, 0x10
/* 3FBB4 8003EFB4 00074400 */  sll        $t0, $a3, 0x10
/* 3FBB8 8003EFB8 00083C03 */  sra        $a3, $t0, 0x10
/* 3FBBC 8003EFBC 00183403 */  sra        $a2, $t8, 0x10
/* 3FBC0 8003EFC0 000E2C03 */  sra        $a1, $t6, 0x10
/* 3FBC4 8003EFC4 E7AC0020 */  swc1       $f12, 0x20($sp)
/* 3FBC8 8003EFC8 0C00C4A1 */  jal        func_80031284
/* 3FBCC 8003EFCC 2404015E */   addiu     $a0, $zero, 0x15e
/* 3FBD0 8003EFD0 1040001E */  beqz       $v0, .L8003F04C
/* 3FBD4 8003EFD4 3044FFFF */   andi      $a0, $v0, 0xffff
/* 3FBD8 8003EFD8 00045080 */  sll        $t2, $a0, 2
/* 3FBDC 8003EFDC 01445023 */  subu       $t2, $t2, $a0
/* 3FBE0 8003EFE0 000A5080 */  sll        $t2, $t2, 2
/* 3FBE4 8003EFE4 01445021 */  addu       $t2, $t2, $a0
/* 3FBE8 8003EFE8 000A5080 */  sll        $t2, $t2, 2
/* 3FBEC 8003EFEC 01445023 */  subu       $t2, $t2, $a0
/* 3FBF0 8003EFF0 3C0B800F */  lui        $t3, %hi(gActors)
/* 3FBF4 8003EFF4 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 3FBF8 8003EFF8 000A50C0 */  sll        $t2, $t2, 3
/* 3FBFC 8003EFFC 014B1021 */  addu       $v0, $t2, $t3
/* 3FC00 8003F000 240C0101 */  addiu      $t4, $zero, 0x101
/* 3FC04 8003F004 A44C0094 */  sh         $t4, 0x94($v0)
/* 3FC08 8003F008 AFA20018 */  sw         $v0, 0x18($sp)
/* 3FC0C 8003F00C 2405007F */  addiu      $a1, $zero, 0x7f
/* 3FC10 8003F010 0C00ABAD */  jal        func_8002AEB4
/* 3FC14 8003F014 A7A4001E */   sh        $a0, 0x1e($sp)
/* 3FC18 8003F018 8FA20018 */  lw         $v0, 0x18($sp)
/* 3FC1C 8003F01C 240DFFF6 */  addiu      $t5, $zero, -0xa
/* 3FC20 8003F020 3C01800F */  lui        $at, %hi(D_800EBC2C)
/* 3FC24 8003F024 AC4D0154 */  sw         $t5, 0x154($v0)
/* 3FC28 8003F028 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 3FC2C 8003F02C C428BC2C */  lwc1       $f8, %lo(D_800EBC2C)($at)
/* 3FC30 8003F030 C429BC28 */  lwc1       $f9, -0x43d8($at)
/* 3FC34 8003F034 460021A1 */  cvt.d.s    $f6, $f4
/* 3FC38 8003F038 46283282 */  mul.d      $f10, $f6, $f8
/* 3FC3C 8003F03C 97A4001E */  lhu        $a0, 0x1e($sp)
/* 3FC40 8003F040 46205020 */  cvt.s.d    $f0, $f10
/* 3FC44 8003F044 E4400110 */  swc1       $f0, 0x110($v0)
/* 3FC48 8003F048 E4400114 */  swc1       $f0, 0x114($v0)
.L8003F04C:
/* 3FC4C 8003F04C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3FC50 8003F050 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3FC54 8003F054 03E00008 */  jr         $ra
/* 3FC58 8003F058 00801025 */   or        $v0, $a0, $zero
