glabel func_8005DC04
/* 5E804 8005DC04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E808 8005DC08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E80C 8005DC0C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E810 8005DC10 3C0F801A */  lui        $t7, %hi(D_801A6860)
/* 5E814 8005DC14 8DF96860 */  lw         $t9, %lo(D_801A6860)($t7)
/* 5E818 8005DC18 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E81C 8005DC1C 01C02025 */  or         $a0, $t6, $zero
/* 5E820 8005DC20 0320F809 */  jalr       $t9
/* 5E824 8005DC24 00002825 */   or        $a1, $zero, $zero
/* 5E828 8005DC28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E82C 8005DC2C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E830 8005DC30 03E00008 */  jr         $ra
/* 5E834 8005DC34 00000000 */   nop
