glabel func_8005D8D0
/* 5E4D0 8005D8D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E4D4 8005D8D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E4D8 8005D8D8 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E4DC 8005D8DC AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E4E0 8005D8E0 3C18801A */  lui        $t8, %hi(D_8019B010)
/* 5E4E4 8005D8E4 8F19B010 */  lw         $t9, %lo(D_8019B010)($t8)
/* 5E4E8 8005D8E8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E4EC 8005D8EC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E4F0 8005D8F0 01E02825 */  or         $a1, $t7, $zero
/* 5E4F4 8005D8F4 0320F809 */  jalr       $t9
/* 5E4F8 8005D8F8 01C02025 */   or        $a0, $t6, $zero
/* 5E4FC 8005D8FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E500 8005D900 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E504 8005D904 03E00008 */  jr         $ra
/* 5E508 8005D908 00000000 */   nop
