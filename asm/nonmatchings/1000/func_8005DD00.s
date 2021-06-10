glabel func_8005DD00
/* 5E900 8005DD00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E904 8005DD04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E908 8005DD08 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E90C 8005DD0C 3C0F801A */  lui        $t7, %hi(D_801A6874)
/* 5E910 8005DD10 8DF96874 */  lw         $t9, %lo(D_801A6874)($t7)
/* 5E914 8005DD14 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E918 8005DD18 01C02025 */  or         $a0, $t6, $zero
/* 5E91C 8005DD1C 0320F809 */  jalr       $t9
/* 5E920 8005DD20 00002825 */   or        $a1, $zero, $zero
/* 5E924 8005DD24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E928 8005DD28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E92C 8005DD2C 03E00008 */  jr         $ra
/* 5E930 8005DD30 00000000 */   nop
