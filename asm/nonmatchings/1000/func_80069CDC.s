glabel func_80069CDC
/* 6A8DC 80069CDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6A8E0 80069CE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6A8E4 80069CE4 AFA40018 */  sw         $a0, 0x18($sp)
/* 6A8E8 80069CE8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6A8EC 80069CEC 0C01A715 */  jal        func_80069C54
/* 6A8F0 80069CF0 01C02025 */   or        $a0, $t6, $zero
/* 6A8F4 80069CF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6A8F8 80069CF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6A8FC 80069CFC 03E00008 */  jr         $ra
/* 6A900 80069D00 00000000 */   nop
