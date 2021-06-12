glabel func_8003FE4C
/* 40A4C 8003FE4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40A50 8003FE50 AFBF001C */  sw         $ra, 0x1c($sp)
/* 40A54 8003FE54 AFA50024 */  sw         $a1, 0x24($sp)
/* 40A58 8003FE58 AFA60028 */  sw         $a2, 0x28($sp)
/* 40A5C 8003FE5C AFA7002C */  sw         $a3, 0x2c($sp)
/* 40A60 8003FE60 00057400 */  sll        $t6, $a1, 0x10
/* 40A64 8003FE64 0006C400 */  sll        $t8, $a2, 0x10
/* 40A68 8003FE68 00074400 */  sll        $t0, $a3, 0x10
/* 40A6C 8003FE6C 00083C03 */  sra        $a3, $t0, 0x10
/* 40A70 8003FE70 00183403 */  sra        $a2, $t8, 0x10
/* 40A74 8003FE74 000E2C03 */  sra        $a1, $t6, 0x10
/* 40A78 8003FE78 0C00FF43 */  jal        func_8003FD0C
/* 40A7C 8003FE7C AFA00010 */   sw        $zero, 0x10($sp)
/* 40A80 8003FE80 8FBF001C */  lw         $ra, 0x1c($sp)
/* 40A84 8003FE84 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40A88 8003FE88 03E00008 */  jr         $ra
/* 40A8C 8003FE8C 00000000 */   nop
