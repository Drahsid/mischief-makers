glabel func_80035218
/* 35E18 80035218 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35E1C 8003521C 97A80032 */  lhu        $t0, 0x32($sp)
/* 35E20 80035220 AFBF001C */  sw         $ra, 0x1c($sp)
/* 35E24 80035224 AFA40020 */  sw         $a0, 0x20($sp)
/* 35E28 80035228 AFA50024 */  sw         $a1, 0x24($sp)
/* 35E2C 8003522C AFA60028 */  sw         $a2, 0x28($sp)
/* 35E30 80035230 AFA7002C */  sw         $a3, 0x2c($sp)
/* 35E34 80035234 308EFFFF */  andi       $t6, $a0, 0xffff
/* 35E38 80035238 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 35E3C 8003523C 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 35E40 80035240 30F9FFFF */  andi       $t9, $a3, 0xffff
/* 35E44 80035244 03203825 */  or         $a3, $t9, $zero
/* 35E48 80035248 03003025 */  or         $a2, $t8, $zero
/* 35E4C 8003524C 01E02825 */  or         $a1, $t7, $zero
/* 35E50 80035250 01C02025 */  or         $a0, $t6, $zero
/* 35E54 80035254 0C00D443 */  jal        func_8003510C
/* 35E58 80035258 AFA80010 */   sw        $t0, 0x10($sp)
/* 35E5C 8003525C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 35E60 80035260 27BD0020 */  addiu      $sp, $sp, 0x20
/* 35E64 80035264 03E00008 */  jr         $ra
/* 35E68 80035268 00000000 */   nop
