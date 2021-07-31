glabel func_80003980
/* 4580 80003980 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4584 80003984 AFA50024 */  sw         $a1, 0x24($sp)
/* 4588 80003988 97AE0026 */  lhu        $t6, 0x26($sp)
/* 458C 8000398C AFBF001C */  sw         $ra, 0x1c($sp)
/* 4590 80003990 2405FFFF */  addiu      $a1, $zero, -1
/* 4594 80003994 AFA00014 */  sw         $zero, 0x14($sp)
/* 4598 80003998 2406FFFF */  addiu      $a2, $zero, -1
/* 459C 8000399C 240700C1 */  addiu      $a3, $zero, 0xc1
/* 45A0 800039A0 0C000C08 */  jal        SFX_func
/* 45A4 800039A4 AFAE0010 */   sw        $t6, 0x10($sp)
/* 45A8 800039A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 45AC 800039AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 45B0 800039B0 03E00008 */  jr         $ra
/* 45B4 800039B4 00000000 */   nop
