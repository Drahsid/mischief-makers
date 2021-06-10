glabel func_8005D9B8
/* 5E5B8 8005D9B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E5BC 8005D9BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E5C0 8005D9C0 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E5C4 8005D9C4 3C0F8019 */  lui        $t7, %hi(D_8019206C)
/* 5E5C8 8005D9C8 8DF9206C */  lw         $t9, %lo(D_8019206C)($t7)
/* 5E5CC 8005D9CC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E5D0 8005D9D0 01C02025 */  or         $a0, $t6, $zero
/* 5E5D4 8005D9D4 0320F809 */  jalr       $t9
/* 5E5D8 8005D9D8 00002825 */   or        $a1, $zero, $zero
/* 5E5DC 8005D9DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E5E0 8005D9E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E5E4 8005D9E4 03E00008 */  jr         $ra
/* 5E5E8 8005D9E8 00000000 */   nop
