glabel func_8005DB00
/* 5E700 8005DB00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E704 8005DB04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E708 8005DB08 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E70C 8005DB0C 3C0F801A */  lui        $t7, %hi(D_801A684C)
/* 5E710 8005DB10 8DF9684C */  lw         $t9, %lo(D_801A684C)($t7)
/* 5E714 8005DB14 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E718 8005DB18 01C02025 */  or         $a0, $t6, $zero
/* 5E71C 8005DB1C 0320F809 */  jalr       $t9
/* 5E720 8005DB20 00002825 */   or        $a1, $zero, $zero
/* 5E724 8005DB24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E728 8005DB28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E72C 8005DB2C 03E00008 */  jr         $ra
/* 5E730 8005DB30 00000000 */   nop
