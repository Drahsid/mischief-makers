glabel func_8003FED8
/* 40AD8 8003FED8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40ADC 8003FEDC AFBF001C */  sw         $ra, 0x1c($sp)
/* 40AE0 8003FEE0 AFA50024 */  sw         $a1, 0x24($sp)
/* 40AE4 8003FEE4 AFA60028 */  sw         $a2, 0x28($sp)
/* 40AE8 8003FEE8 AFA7002C */  sw         $a3, 0x2c($sp)
/* 40AEC 8003FEEC 00057400 */  sll        $t6, $a1, 0x10
/* 40AF0 8003FEF0 0006C400 */  sll        $t8, $a2, 0x10
/* 40AF4 8003FEF4 00074400 */  sll        $t0, $a3, 0x10
/* 40AF8 8003FEF8 240A0002 */  addiu      $t2, $zero, 2
/* 40AFC 8003FEFC 00083C03 */  sra        $a3, $t0, 0x10
/* 40B00 8003FF00 00183403 */  sra        $a2, $t8, 0x10
/* 40B04 8003FF04 000E2C03 */  sra        $a1, $t6, 0x10
/* 40B08 8003FF08 0C00FF43 */  jal        func_8003FD0C
/* 40B0C 8003FF0C AFAA0010 */   sw        $t2, 0x10($sp)
/* 40B10 8003FF10 8FBF001C */  lw         $ra, 0x1c($sp)
/* 40B14 8003FF14 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40B18 8003FF18 03E00008 */  jr         $ra
/* 40B1C 8003FF1C 00000000 */   nop
