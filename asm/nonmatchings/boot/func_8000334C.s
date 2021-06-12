glabel func_8000334C
/* 3F4C 8000334C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F50 80003350 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3F54 80003354 240E00FF */  addiu      $t6, $zero, 0xff
/* 3F58 80003358 AFAE0010 */  sw         $t6, 0x10($sp)
/* 3F5C 8000335C AFA00014 */  sw         $zero, 0x14($sp)
/* 3F60 80003360 2405FFFF */  addiu      $a1, $zero, -1
/* 3F64 80003364 2406FFFF */  addiu      $a2, $zero, -1
/* 3F68 80003368 0C000C08 */  jal        func_80003020
/* 3F6C 8000336C 24070081 */   addiu     $a3, $zero, 0x81
/* 3F70 80003370 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3F74 80003374 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3F78 80003378 03E00008 */  jr         $ra
/* 3F7C 8000337C 00000000 */   nop
