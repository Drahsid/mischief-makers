glabel func_8005D664
/* 5E264 8005D664 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E268 8005D668 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E26C 8005D66C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E270 8005D670 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E274 8005D674 3C18801A */  lui        $t8, %hi(D_8019B010)
/* 5E278 8005D678 8F19B010 */  lw         $t9, %lo(D_8019B010)($t8)
/* 5E27C 8005D67C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E280 8005D680 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E284 8005D684 01E02825 */  or         $a1, $t7, $zero
/* 5E288 8005D688 0320F809 */  jalr       $t9
/* 5E28C 8005D68C 01C02025 */   or        $a0, $t6, $zero
/* 5E290 8005D690 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E294 8005D694 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E298 8005D698 03E00008 */  jr         $ra
/* 5E29C 8005D69C 00000000 */   nop
