glabel func_8005D780
/* 5E380 8005D780 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E384 8005D784 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E388 8005D788 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E38C 8005D78C AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E390 8005D790 3C18801A */  lui        $t8, %hi(D_8019B014)
/* 5E394 8005D794 8F19B014 */  lw         $t9, %lo(D_8019B014)($t8)
/* 5E398 8005D798 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E39C 8005D79C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E3A0 8005D7A0 01E02825 */  or         $a1, $t7, $zero
/* 5E3A4 8005D7A4 0320F809 */  jalr       $t9
/* 5E3A8 8005D7A8 01C02025 */   or        $a0, $t6, $zero
/* 5E3AC 8005D7AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E3B0 8005D7B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E3B4 8005D7B4 03E00008 */  jr         $ra
/* 5E3B8 8005D7B8 00000000 */   nop
