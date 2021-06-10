glabel func_8005DBD0
/* 5E7D0 8005DBD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E7D4 8005DBD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E7D8 8005DBD8 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E7DC 8005DBDC 3C0F801A */  lui        $t7, %hi(D_801A685C)
/* 5E7E0 8005DBE0 8DF9685C */  lw         $t9, %lo(D_801A685C)($t7)
/* 5E7E4 8005DBE4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E7E8 8005DBE8 01C02025 */  or         $a0, $t6, $zero
/* 5E7EC 8005DBEC 0320F809 */  jalr       $t9
/* 5E7F0 8005DBF0 00002825 */   or        $a1, $zero, $zero
/* 5E7F4 8005DBF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E7F8 8005DBF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E7FC 8005DBFC 03E00008 */  jr         $ra
/* 5E800 8005DC00 00000000 */   nop
