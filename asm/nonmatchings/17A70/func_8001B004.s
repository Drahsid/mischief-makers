glabel func_8001B004
/* 1BC04 8001B004 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1BC08 8001B008 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1BC0C 8001B00C 24040009 */  addiu      $a0, $zero, 9
/* 1BC10 8001B010 24050006 */  addiu      $a1, $zero, 6
/* 1BC14 8001B014 0C006B2A */  jal        Record_PrintTime
/* 1BC18 8001B018 3406FFFF */   ori       $a2, $zero, 0xffff
/* 1BC1C 8001B01C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1BC20 8001B020 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1BC24 8001B024 03E00008 */  jr         $ra
/* 1BC28 8001B028 00000000 */   nop
