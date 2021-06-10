glabel func_80068B28
/* 69728 80068B28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6972C 80068B2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 69730 80068B30 24040040 */  addiu      $a0, $zero, 0x40
/* 69734 80068B34 24050080 */  addiu      $a1, $zero, 0x80
/* 69738 80068B38 24060040 */  addiu      $a2, $zero, 0x40
/* 6973C 80068B3C 0C00A756 */  jal        func_80029D58
/* 69740 80068B40 2407FFC0 */   addiu     $a3, $zero, -0x40
/* 69744 80068B44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 69748 80068B48 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6974C 80068B4C 03E00008 */  jr         $ra
/* 69750 80068B50 00000000 */   nop
