glabel func_8005DC64
/* 5E864 8005DC64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E868 8005DC68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E86C 8005DC6C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E870 8005DC70 3C0F801A */  lui        $t7, %hi(D_801A6868)
/* 5E874 8005DC74 8DF96868 */  lw         $t9, %lo(D_801A6868)($t7)
/* 5E878 8005DC78 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E87C 8005DC7C 01C02025 */  or         $a0, $t6, $zero
/* 5E880 8005DC80 0320F809 */  jalr       $t9
/* 5E884 8005DC84 00002825 */   or        $a1, $zero, $zero
/* 5E888 8005DC88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E88C 8005DC8C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E890 8005DC90 03E00008 */  jr         $ra
/* 5E894 8005DC94 00000000 */   nop
