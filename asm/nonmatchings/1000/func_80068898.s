glabel func_80068898
/* 69498 80068898 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6949C 8006889C AFBF0014 */  sw         $ra, 0x14($sp)
/* 694A0 800688A0 24040020 */  addiu      $a0, $zero, 0x20
/* 694A4 800688A4 24050010 */  addiu      $a1, $zero, 0x10
/* 694A8 800688A8 0C00A69F */  jal        func_80029A7C
/* 694AC 800688AC 2406FFF0 */   addiu     $a2, $zero, -0x10
/* 694B0 800688B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 694B4 800688B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 694B8 800688B8 03E00008 */  jr         $ra
/* 694BC 800688BC 00000000 */   nop
