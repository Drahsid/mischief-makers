glabel func_80005828
/* 6428 80005828 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 642C 8000582C 3C04800C */  lui        $a0, %hi(D_800C5008)
/* 6430 80005830 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6434 80005834 90845008 */  lbu        $a0, %lo(D_800C5008)($a0)
/* 6438 80005838 0C0013FF */  jal        func_80004FFC
/* 643C 8000583C 00000000 */   nop
/* 6440 80005840 0C00142D */  jal        func_800050B4
/* 6444 80005844 00000000 */   nop
/* 6448 80005848 0C0015DC */  jal        func_80005770
/* 644C 8000584C 00000000 */   nop
/* 6450 80005850 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6454 80005854 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6458 80005858 03E00008 */  jr         $ra
/* 645C 8000585C 00000000 */   nop
