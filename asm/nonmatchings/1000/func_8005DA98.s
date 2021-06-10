glabel func_8005DA98
/* 5E698 8005DA98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E69C 8005DA9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E6A0 8005DAA0 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E6A4 8005DAA4 3C0F801A */  lui        $t7, %hi(D_801A6844)
/* 5E6A8 8005DAA8 8DF96844 */  lw         $t9, %lo(D_801A6844)($t7)
/* 5E6AC 8005DAAC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E6B0 8005DAB0 01C02025 */  or         $a0, $t6, $zero
/* 5E6B4 8005DAB4 0320F809 */  jalr       $t9
/* 5E6B8 8005DAB8 00002825 */   or        $a1, $zero, $zero
/* 5E6BC 8005DABC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E6C0 8005DAC0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E6C4 8005DAC4 03E00008 */  jr         $ra
/* 5E6C8 8005DAC8 00000000 */   nop
