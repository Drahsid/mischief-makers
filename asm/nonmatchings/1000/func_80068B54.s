glabel func_80068B54
/* 69754 80068B54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 69758 80068B58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6975C 80068B5C 24040040 */  addiu      $a0, $zero, 0x40
/* 69760 80068B60 24050080 */  addiu      $a1, $zero, 0x80
/* 69764 80068B64 24060080 */  addiu      $a2, $zero, 0x80
/* 69768 80068B68 0C00A730 */  jal        func_80029CC0
/* 6976C 80068B6C 2407FF80 */   addiu     $a3, $zero, -0x80
/* 69770 80068B70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 69774 80068B74 27BD0018 */  addiu      $sp, $sp, 0x18
/* 69778 80068B78 03E00008 */  jr         $ra
/* 6977C 80068B7C 00000000 */   nop
