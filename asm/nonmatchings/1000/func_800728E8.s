glabel func_800728E8
/* 734E8 800728E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 734EC 800728EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 734F0 800728F0 AFA40018 */  sw         $a0, 0x18($sp)
/* 734F4 800728F4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 734F8 800728F8 0C01C98A */  jal        func_80072628
/* 734FC 800728FC 01C02025 */   or        $a0, $t6, $zero
/* 73500 80072900 8FBF0014 */  lw         $ra, 0x14($sp)
/* 73504 80072904 27BD0018 */  addiu      $sp, $sp, 0x18
/* 73508 80072908 03E00008 */  jr         $ra
/* 7350C 8007290C 00000000 */   nop
