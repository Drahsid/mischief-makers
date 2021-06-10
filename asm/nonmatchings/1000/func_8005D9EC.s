glabel func_8005D9EC
/* 5E5EC 8005D9EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E5F0 8005D9F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E5F4 8005D9F4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E5F8 8005D9F8 3C0F8019 */  lui        $t7, %hi(D_80192070)
/* 5E5FC 8005D9FC 8DF92070 */  lw         $t9, %lo(D_80192070)($t7)
/* 5E600 8005DA00 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E604 8005DA04 01C02025 */  or         $a0, $t6, $zero
/* 5E608 8005DA08 0320F809 */  jalr       $t9
/* 5E60C 8005DA0C 00002825 */   or        $a1, $zero, $zero
/* 5E610 8005DA10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E614 8005DA14 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E618 8005DA18 03E00008 */  jr         $ra
/* 5E61C 8005DA1C 00000000 */   nop
