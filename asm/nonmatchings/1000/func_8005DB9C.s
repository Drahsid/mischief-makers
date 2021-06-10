glabel func_8005DB9C
/* 5E79C 8005DB9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E7A0 8005DBA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E7A4 8005DBA4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E7A8 8005DBA8 3C0F801A */  lui        $t7, %hi(D_801A6858)
/* 5E7AC 8005DBAC 8DF96858 */  lw         $t9, %lo(D_801A6858)($t7)
/* 5E7B0 8005DBB0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E7B4 8005DBB4 01C02025 */  or         $a0, $t6, $zero
/* 5E7B8 8005DBB8 0320F809 */  jalr       $t9
/* 5E7BC 8005DBBC 00002825 */   or        $a1, $zero, $zero
/* 5E7C0 8005DBC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E7C4 8005DBC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E7C8 8005DBC8 03E00008 */  jr         $ra
/* 5E7CC 8005DBCC 00000000 */   nop
