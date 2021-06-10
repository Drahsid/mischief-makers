glabel func_8005D6DC
/* 5E2DC 8005D6DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E2E0 8005D6E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E2E4 8005D6E4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E2E8 8005D6E8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E2EC 8005D6EC 3C18801A */  lui        $t8, %hi(D_8019B018)
/* 5E2F0 8005D6F0 8F19B018 */  lw         $t9, %lo(D_8019B018)($t8)
/* 5E2F4 8005D6F4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E2F8 8005D6F8 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E2FC 8005D6FC 01E02825 */  or         $a1, $t7, $zero
/* 5E300 8005D700 0320F809 */  jalr       $t9
/* 5E304 8005D704 01C02025 */   or        $a0, $t6, $zero
/* 5E308 8005D708 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E30C 8005D70C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E310 8005D710 03E00008 */  jr         $ra
/* 5E314 8005D714 00000000 */   nop
