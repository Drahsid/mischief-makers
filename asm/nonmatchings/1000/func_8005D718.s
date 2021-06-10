glabel func_8005D718
/* 5E318 8005D718 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E31C 8005D71C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E320 8005D720 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E324 8005D724 3C0F8019 */  lui        $t7, %hi(D_8019202C)
/* 5E328 8005D728 8DF9202C */  lw         $t9, %lo(D_8019202C)($t7)
/* 5E32C 8005D72C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E330 8005D730 01C02025 */  or         $a0, $t6, $zero
/* 5E334 8005D734 0320F809 */  jalr       $t9
/* 5E338 8005D738 00002825 */   or        $a1, $zero, $zero
/* 5E33C 8005D73C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E340 8005D740 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E344 8005D744 03E00008 */  jr         $ra
/* 5E348 8005D748 00000000 */   nop
