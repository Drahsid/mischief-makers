glabel func_8005D7F8
/* 5E3F8 8005D7F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E3FC 8005D7FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E400 8005D800 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E404 8005D804 3C0F801A */  lui        $t7, %hi(D_8019B01C)
/* 5E408 8005D808 8DF9B01C */  lw         $t9, %lo(D_8019B01C)($t7)
/* 5E40C 8005D80C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E410 8005D810 01C02025 */  or         $a0, $t6, $zero
/* 5E414 8005D814 0320F809 */  jalr       $t9
/* 5E418 8005D818 00002825 */   or        $a1, $zero, $zero
/* 5E41C 8005D81C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E420 8005D820 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E424 8005D824 03E00008 */  jr         $ra
/* 5E428 8005D828 00000000 */   nop
