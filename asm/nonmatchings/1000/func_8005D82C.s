glabel func_8005D82C
/* 5E42C 8005D82C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E430 8005D830 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E434 8005D834 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E438 8005D838 3C0F801A */  lui        $t7, %hi(D_8019B01C)
/* 5E43C 8005D83C 8DF9B01C */  lw         $t9, %lo(D_8019B01C)($t7)
/* 5E440 8005D840 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E444 8005D844 01C02025 */  or         $a0, $t6, $zero
/* 5E448 8005D848 0320F809 */  jalr       $t9
/* 5E44C 8005D84C 00002825 */   or        $a1, $zero, $zero
/* 5E450 8005D850 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E454 8005D854 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E458 8005D858 03E00008 */  jr         $ra
/* 5E45C 8005D85C 00000000 */   nop
