glabel func_8005DC98
/* 5E898 8005DC98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E89C 8005DC9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E8A0 8005DCA0 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E8A4 8005DCA4 3C0F801A */  lui        $t7, %hi(D_801A686C)
/* 5E8A8 8005DCA8 8DF9686C */  lw         $t9, %lo(D_801A686C)($t7)
/* 5E8AC 8005DCAC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E8B0 8005DCB0 01C02025 */  or         $a0, $t6, $zero
/* 5E8B4 8005DCB4 0320F809 */  jalr       $t9
/* 5E8B8 8005DCB8 00002825 */   or        $a1, $zero, $zero
/* 5E8BC 8005DCBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E8C0 8005DCC0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E8C4 8005DCC4 03E00008 */  jr         $ra
/* 5E8C8 8005DCC8 00000000 */   nop
