glabel func_800732F8
/* 73EF8 800732F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73EFC 800732FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 73F00 80073300 AFA40018 */  sw         $a0, 0x18($sp)
/* 73F04 80073304 308EFFFF */  andi       $t6, $a0, 0xffff
/* 73F08 80073308 0C01B069 */  jal        func_8006C1A4
/* 73F0C 8007330C 01C02025 */   or        $a0, $t6, $zero
/* 73F10 80073310 8FBF0014 */  lw         $ra, 0x14($sp)
/* 73F14 80073314 27BD0018 */  addiu      $sp, $sp, 0x18
/* 73F18 80073318 03E00008 */  jr         $ra
/* 73F1C 8007331C 00000000 */   nop
