glabel func_80068B00
/* 69700 80068B00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 69704 80068B04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 69708 80068B08 240400A0 */  addiu      $a0, $zero, 0xa0
/* 6970C 80068B0C 24050060 */  addiu      $a1, $zero, 0x60
/* 69710 80068B10 0C00A69F */  jal        func_80029A7C
/* 69714 80068B14 2406FFA0 */   addiu     $a2, $zero, -0x60
/* 69718 80068B18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6971C 80068B1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 69720 80068B20 03E00008 */  jr         $ra
/* 69724 80068B24 00000000 */   nop
