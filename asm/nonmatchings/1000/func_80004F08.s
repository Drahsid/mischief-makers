glabel func_80004F08
/* 5B08 80004F08 2C8103E8 */  sltiu      $at, $a0, 0x3e8
/* 5B0C 80004F0C 14200003 */  bnez       $at, .L80004F1C
/* 5B10 80004F10 00001025 */   or        $v0, $zero, $zero
/* 5B14 80004F14 03E00008 */  jr         $ra
/* 5B18 80004F18 24020001 */   addiu     $v0, $zero, 1
.L80004F1C:
/* 5B1C 80004F1C 03E00008 */  jr         $ra
/* 5B20 80004F20 00000000 */   nop
