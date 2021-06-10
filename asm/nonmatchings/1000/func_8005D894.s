glabel func_8005D894
/* 5E494 8005D894 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E498 8005D898 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E49C 8005D89C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E4A0 8005D8A0 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E4A4 8005D8A4 3C18801A */  lui        $t8, %hi(D_8019B00C)
/* 5E4A8 8005D8A8 8F19B00C */  lw         $t9, %lo(D_8019B00C)($t8)
/* 5E4AC 8005D8AC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E4B0 8005D8B0 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E4B4 8005D8B4 01E02825 */  or         $a1, $t7, $zero
/* 5E4B8 8005D8B8 0320F809 */  jalr       $t9
/* 5E4BC 8005D8BC 01C02025 */   or        $a0, $t6, $zero
/* 5E4C0 8005D8C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E4C4 8005D8C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E4C8 8005D8C8 03E00008 */  jr         $ra
/* 5E4CC 8005D8CC 00000000 */   nop
