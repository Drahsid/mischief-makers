glabel func_80003474
/* 4074 80003474 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4078 80003478 AFBF001C */  sw         $ra, 0x1c($sp)
/* 407C 8000347C AFA50024 */  sw         $a1, 0x24($sp)
/* 4080 80003480 AFA60028 */  sw         $a2, 0x28($sp)
/* 4084 80003484 00057400 */  sll        $t6, $a1, 0x10
/* 4088 80003488 0006C600 */  sll        $t8, $a2, 0x18
/* 408C 8000348C 240800FF */  addiu      $t0, $zero, 0xff
/* 4090 80003490 00183603 */  sra        $a2, $t8, 0x18
/* 4094 80003494 000E2C03 */  sra        $a1, $t6, 0x10
/* 4098 80003498 AFA80010 */  sw         $t0, 0x10($sp)
/* 409C 8000349C AFA00014 */  sw         $zero, 0x14($sp)
/* 40A0 800034A0 0C000C08 */  jal        func_80003020
/* 40A4 800034A4 24070091 */   addiu     $a3, $zero, 0x91
/* 40A8 800034A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 40AC 800034AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40B0 800034B0 03E00008 */  jr         $ra
/* 40B4 800034B4 00000000 */   nop