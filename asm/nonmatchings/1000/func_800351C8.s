glabel func_800351C8
/* 35DC8 800351C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35DCC 800351CC AFBF001C */  sw         $ra, 0x1c($sp)
/* 35DD0 800351D0 AFA40020 */  sw         $a0, 0x20($sp)
/* 35DD4 800351D4 AFA50024 */  sw         $a1, 0x24($sp)
/* 35DD8 800351D8 AFA60028 */  sw         $a2, 0x28($sp)
/* 35DDC 800351DC AFA7002C */  sw         $a3, 0x2c($sp)
/* 35DE0 800351E0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 35DE4 800351E4 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 35DE8 800351E8 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 35DEC 800351EC 30F9FFFF */  andi       $t9, $a3, 0xffff
/* 35DF0 800351F0 03203825 */  or         $a3, $t9, $zero
/* 35DF4 800351F4 03003025 */  or         $a2, $t8, $zero
/* 35DF8 800351F8 01E02825 */  or         $a1, $t7, $zero
/* 35DFC 800351FC 01C02025 */  or         $a0, $t6, $zero
/* 35E00 80035200 0C00D443 */  jal        func_8003510C
/* 35E04 80035204 AFA00010 */   sw        $zero, 0x10($sp)
/* 35E08 80035208 8FBF001C */  lw         $ra, 0x1c($sp)
/* 35E0C 8003520C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 35E10 80035210 03E00008 */  jr         $ra
/* 35E14 80035214 00000000 */   nop
