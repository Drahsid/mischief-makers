glabel func_8005DCCC
/* 5E8CC 8005DCCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E8D0 8005DCD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E8D4 8005DCD4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E8D8 8005DCD8 3C0F801A */  lui        $t7, %hi(D_801A6870)
/* 5E8DC 8005DCDC 8DF96870 */  lw         $t9, %lo(D_801A6870)($t7)
/* 5E8E0 8005DCE0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E8E4 8005DCE4 01C02025 */  or         $a0, $t6, $zero
/* 5E8E8 8005DCE8 0320F809 */  jalr       $t9
/* 5E8EC 8005DCEC 00002825 */   or        $a1, $zero, $zero
/* 5E8F0 8005DCF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E8F4 8005DCF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E8F8 8005DCF8 03E00008 */  jr         $ra
/* 5E8FC 8005DCFC 00000000 */   nop
