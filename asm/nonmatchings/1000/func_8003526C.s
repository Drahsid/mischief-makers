glabel func_8003526C
/* 35E6C 8003526C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35E70 80035270 97A80032 */  lhu        $t0, 0x32($sp)
/* 35E74 80035274 AFBF001C */  sw         $ra, 0x1c($sp)
/* 35E78 80035278 AFA40020 */  sw         $a0, 0x20($sp)
/* 35E7C 8003527C AFA50024 */  sw         $a1, 0x24($sp)
/* 35E80 80035280 AFA60028 */  sw         $a2, 0x28($sp)
/* 35E84 80035284 AFA7002C */  sw         $a3, 0x2c($sp)
/* 35E88 80035288 308EFFFF */  andi       $t6, $a0, 0xffff
/* 35E8C 8003528C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 35E90 80035290 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 35E94 80035294 30F9FFFF */  andi       $t9, $a3, 0xffff
/* 35E98 80035298 03203825 */  or         $a3, $t9, $zero
/* 35E9C 8003529C 03003025 */  or         $a2, $t8, $zero
/* 35EA0 800352A0 01E02825 */  or         $a1, $t7, $zero
/* 35EA4 800352A4 01C02025 */  or         $a0, $t6, $zero
/* 35EA8 800352A8 0C00D443 */  jal        func_8003510C
/* 35EAC 800352AC AFA80010 */   sw        $t0, 0x10($sp)
/* 35EB0 800352B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 35EB4 800352B4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 35EB8 800352B8 03E00008 */  jr         $ra
/* 35EBC 800352BC 00000000 */   nop
