glabel func_8003FE90
/* 40A90 8003FE90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40A94 8003FE94 AFBF001C */  sw         $ra, 0x1c($sp)
/* 40A98 8003FE98 AFA50024 */  sw         $a1, 0x24($sp)
/* 40A9C 8003FE9C AFA60028 */  sw         $a2, 0x28($sp)
/* 40AA0 8003FEA0 AFA7002C */  sw         $a3, 0x2c($sp)
/* 40AA4 8003FEA4 00057400 */  sll        $t6, $a1, 0x10
/* 40AA8 8003FEA8 0006C400 */  sll        $t8, $a2, 0x10
/* 40AAC 8003FEAC 00074400 */  sll        $t0, $a3, 0x10
/* 40AB0 8003FEB0 240A0001 */  addiu      $t2, $zero, 1
/* 40AB4 8003FEB4 00083C03 */  sra        $a3, $t0, 0x10
/* 40AB8 8003FEB8 00183403 */  sra        $a2, $t8, 0x10
/* 40ABC 8003FEBC 000E2C03 */  sra        $a1, $t6, 0x10
/* 40AC0 8003FEC0 0C00FF43 */  jal        func_8003FD0C
/* 40AC4 8003FEC4 AFAA0010 */   sw        $t2, 0x10($sp)
/* 40AC8 8003FEC8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 40ACC 8003FECC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40AD0 8003FED0 03E00008 */  jr         $ra
/* 40AD4 8003FED4 00000000 */   nop
