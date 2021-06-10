glabel func_80082184
/* 82D84 80082184 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 82D88 80082188 AFBF0014 */  sw         $ra, 0x14($sp)
/* 82D8C 8008218C AFA40018 */  sw         $a0, 0x18($sp)
/* 82D90 80082190 308EFFFF */  andi       $t6, $a0, 0xffff
/* 82D94 80082194 0C02078E */  jal        func_80081E38
/* 82D98 80082198 01C02025 */   or        $a0, $t6, $zero
/* 82D9C 8008219C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82DA0 800821A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 82DA4 800821A4 03E00008 */  jr         $ra
/* 82DA8 800821A8 00000000 */   nop
/* 82DAC 800821AC 00000000 */  nop
