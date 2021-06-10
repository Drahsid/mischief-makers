glabel func_8005D860
/* 5E460 8005D860 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E464 8005D864 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E468 8005D868 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E46C 8005D86C 3C0F801A */  lui        $t7, %hi(D_8019B014)
/* 5E470 8005D870 8DF9B014 */  lw         $t9, %lo(D_8019B014)($t7)
/* 5E474 8005D874 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E478 8005D878 01C02025 */  or         $a0, $t6, $zero
/* 5E47C 8005D87C 0320F809 */  jalr       $t9
/* 5E480 8005D880 00002825 */   or        $a1, $zero, $zero
/* 5E484 8005D884 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E488 8005D888 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E48C 8005D88C 03E00008 */  jr         $ra
/* 5E490 8005D890 00000000 */   nop
