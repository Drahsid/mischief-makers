glabel func_80003380
/* 3F80 80003380 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F84 80003384 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3F88 80003388 240E00FF */  addiu      $t6, $zero, 0xff
/* 3F8C 8000338C AFAE0010 */  sw         $t6, 0x10($sp)
/* 3F90 80003390 AFA00014 */  sw         $zero, 0x14($sp)
/* 3F94 80003394 2405FFFF */  addiu      $a1, $zero, -1
/* 3F98 80003398 2406FFFF */  addiu      $a2, $zero, -1
/* 3F9C 8000339C 0C000C08 */  jal        func_80003020
/* 3FA0 800033A0 24070091 */   addiu     $a3, $zero, 0x91
/* 3FA4 800033A4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3FA8 800033A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3FAC 800033AC 03E00008 */  jr         $ra
/* 3FB0 800033B0 00000000 */   nop
