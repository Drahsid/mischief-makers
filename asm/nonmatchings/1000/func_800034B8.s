glabel func_800034B8
/* 40B8 800034B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40BC 800034BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 40C0 800034C0 AFA50024 */  sw         $a1, 0x24($sp)
/* 40C4 800034C4 AFA60028 */  sw         $a2, 0x28($sp)
/* 40C8 800034C8 00057400 */  sll        $t6, $a1, 0x10
/* 40CC 800034CC 0006C600 */  sll        $t8, $a2, 0x18
/* 40D0 800034D0 240800FF */  addiu      $t0, $zero, 0xff
/* 40D4 800034D4 00183603 */  sra        $a2, $t8, 0x18
/* 40D8 800034D8 000E2C03 */  sra        $a1, $t6, 0x10
/* 40DC 800034DC AFA80010 */  sw         $t0, 0x10($sp)
/* 40E0 800034E0 AFA00014 */  sw         $zero, 0x14($sp)
/* 40E4 800034E4 0C000C08 */  jal        func_80003020
/* 40E8 800034E8 24070092 */   addiu     $a3, $zero, 0x92
/* 40EC 800034EC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 40F0 800034F0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40F4 800034F4 03E00008 */  jr         $ra
/* 40F8 800034F8 00000000 */   nop
