glabel func_8005DDC8
/* 5E9C8 8005DDC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E9CC 8005DDCC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E9D0 8005DDD0 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E9D4 8005DDD4 3C0F8019 */  lui        $t7, %hi(D_80192020)
/* 5E9D8 8005DDD8 8DF92020 */  lw         $t9, %lo(D_80192020)($t7)
/* 5E9DC 8005DDDC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E9E0 8005DDE0 01C02025 */  or         $a0, $t6, $zero
/* 5E9E4 8005DDE4 0320F809 */  jalr       $t9
/* 5E9E8 8005DDE8 00002825 */   or        $a1, $zero, $zero
/* 5E9EC 8005DDEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E9F0 8005DDF0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E9F4 8005DDF4 03E00008 */  jr         $ra
/* 5E9F8 8005DDF8 00000000 */   nop
