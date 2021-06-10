glabel func_800033B4
/* 3FB4 800033B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3FB8 800033B8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3FBC 800033BC AFA50024 */  sw         $a1, 0x24($sp)
/* 3FC0 800033C0 00057400 */  sll        $t6, $a1, 0x10
/* 3FC4 800033C4 241800FF */  addiu      $t8, $zero, 0xff
/* 3FC8 800033C8 000E2C03 */  sra        $a1, $t6, 0x10
/* 3FCC 800033CC AFB80010 */  sw         $t8, 0x10($sp)
/* 3FD0 800033D0 AFA00014 */  sw         $zero, 0x14($sp)
/* 3FD4 800033D4 2406FFFF */  addiu      $a2, $zero, -1
/* 3FD8 800033D8 0C000C08 */  jal        func_80003020
/* 3FDC 800033DC 24070081 */   addiu     $a3, $zero, 0x81
/* 3FE0 800033E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3FE4 800033E4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3FE8 800033E8 03E00008 */  jr         $ra
/* 3FEC 800033EC 00000000 */   nop
