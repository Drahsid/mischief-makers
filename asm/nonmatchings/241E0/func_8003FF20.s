glabel func_8003FF20
/* 40B20 8003FF20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40B24 8003FF24 AFBF001C */  sw         $ra, 0x1c($sp)
/* 40B28 8003FF28 AFA50024 */  sw         $a1, 0x24($sp)
/* 40B2C 8003FF2C AFA60028 */  sw         $a2, 0x28($sp)
/* 40B30 8003FF30 AFA7002C */  sw         $a3, 0x2c($sp)
/* 40B34 8003FF34 00057400 */  sll        $t6, $a1, 0x10
/* 40B38 8003FF38 0006C400 */  sll        $t8, $a2, 0x10
/* 40B3C 8003FF3C 00074400 */  sll        $t0, $a3, 0x10
/* 40B40 8003FF40 240A0003 */  addiu      $t2, $zero, 3
/* 40B44 8003FF44 00083C03 */  sra        $a3, $t0, 0x10
/* 40B48 8003FF48 00183403 */  sra        $a2, $t8, 0x10
/* 40B4C 8003FF4C 000E2C03 */  sra        $a1, $t6, 0x10
/* 40B50 8003FF50 0C00FF43 */  jal        func_8003FD0C
/* 40B54 8003FF54 AFAA0010 */   sw        $t2, 0x10($sp)
/* 40B58 8003FF58 8FBF001C */  lw         $ra, 0x1c($sp)
/* 40B5C 8003FF5C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40B60 8003FF60 03E00008 */  jr         $ra
/* 40B64 8003FF64 00000000 */   nop
