glabel func_8005D74C
/* 5E34C 8005D74C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E350 8005D750 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E354 8005D754 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E358 8005D758 3C0F8019 */  lui        $t7, %hi(D_80192030)
/* 5E35C 8005D75C 8DF92030 */  lw         $t9, %lo(D_80192030)($t7)
/* 5E360 8005D760 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E364 8005D764 01C02025 */  or         $a0, $t6, $zero
/* 5E368 8005D768 0320F809 */  jalr       $t9
/* 5E36C 8005D76C 00002825 */   or        $a1, $zero, $zero
/* 5E370 8005D770 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E374 8005D774 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E378 8005D778 03E00008 */  jr         $ra
/* 5E37C 8005D77C 00000000 */   nop
