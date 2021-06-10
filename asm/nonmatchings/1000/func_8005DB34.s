glabel func_8005DB34
/* 5E734 8005DB34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E738 8005DB38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E73C 8005DB3C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E740 8005DB40 3C0F801A */  lui        $t7, %hi(D_801A6850)
/* 5E744 8005DB44 8DF96850 */  lw         $t9, %lo(D_801A6850)($t7)
/* 5E748 8005DB48 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E74C 8005DB4C 01C02025 */  or         $a0, $t6, $zero
/* 5E750 8005DB50 0320F809 */  jalr       $t9
/* 5E754 8005DB54 00002825 */   or        $a1, $zero, $zero
/* 5E758 8005DB58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E75C 8005DB5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E760 8005DB60 03E00008 */  jr         $ra
/* 5E764 8005DB64 00000000 */   nop
