glabel func_8005D90C
/* 5E50C 8005D90C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E510 8005D910 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E514 8005D914 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E518 8005D918 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E51C 8005D91C 3C188019 */  lui        $t8, %hi(D_80192060)
/* 5E520 8005D920 8F192060 */  lw         $t9, %lo(D_80192060)($t8)
/* 5E524 8005D924 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E528 8005D928 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E52C 8005D92C 01E02825 */  or         $a1, $t7, $zero
/* 5E530 8005D930 0320F809 */  jalr       $t9
/* 5E534 8005D934 01C02025 */   or        $a0, $t6, $zero
/* 5E538 8005D938 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E53C 8005D93C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E540 8005D940 03E00008 */  jr         $ra
/* 5E544 8005D944 00000000 */   nop
