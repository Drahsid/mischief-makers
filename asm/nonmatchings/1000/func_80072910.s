glabel func_80072910
/* 73510 80072910 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73514 80072914 AFBF0014 */  sw         $ra, 0x14($sp)
/* 73518 80072918 AFA40018 */  sw         $a0, 0x18($sp)
/* 7351C 8007291C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 73520 80072920 0C01C98A */  jal        func_80072628
/* 73524 80072924 01C02025 */   or        $a0, $t6, $zero
/* 73528 80072928 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7352C 8007292C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 73530 80072930 03E00008 */  jr         $ra
/* 73534 80072934 00000000 */   nop
