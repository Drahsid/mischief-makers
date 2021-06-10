glabel func_8005D6A0
/* 5E2A0 8005D6A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E2A4 8005D6A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E2A8 8005D6A8 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E2AC 8005D6AC AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E2B0 8005D6B0 3C18801A */  lui        $t8, %hi(D_8019B014)
/* 5E2B4 8005D6B4 8F19B014 */  lw         $t9, %lo(D_8019B014)($t8)
/* 5E2B8 8005D6B8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E2BC 8005D6BC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E2C0 8005D6C0 01E02825 */  or         $a1, $t7, $zero
/* 5E2C4 8005D6C4 0320F809 */  jalr       $t9
/* 5E2C8 8005D6C8 01C02025 */   or        $a0, $t6, $zero
/* 5E2CC 8005D6CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E2D0 8005D6D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E2D4 8005D6D4 03E00008 */  jr         $ra
/* 5E2D8 8005D6D8 00000000 */   nop
