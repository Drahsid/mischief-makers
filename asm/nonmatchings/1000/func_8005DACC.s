glabel func_8005DACC
/* 5E6CC 8005DACC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E6D0 8005DAD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E6D4 8005DAD4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E6D8 8005DAD8 3C0F801A */  lui        $t7, %hi(D_801A6848)
/* 5E6DC 8005DADC 8DF96848 */  lw         $t9, %lo(D_801A6848)($t7)
/* 5E6E0 8005DAE0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E6E4 8005DAE4 01C02025 */  or         $a0, $t6, $zero
/* 5E6E8 8005DAE8 0320F809 */  jalr       $t9
/* 5E6EC 8005DAEC 00002825 */   or        $a1, $zero, $zero
/* 5E6F0 8005DAF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E6F4 8005DAF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E6F8 8005DAF8 03E00008 */  jr         $ra
/* 5E6FC 8005DAFC 00000000 */   nop
