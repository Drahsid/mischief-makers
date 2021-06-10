glabel func_8005DDFC
/* 5E9FC 8005DDFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5EA00 8005DE00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5EA04 8005DE04 AFA40018 */  sw         $a0, 0x18($sp)
/* 5EA08 8005DE08 3C0F8019 */  lui        $t7, %hi(D_80192028)
/* 5EA0C 8005DE0C 8DF92028 */  lw         $t9, %lo(D_80192028)($t7)
/* 5EA10 8005DE10 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5EA14 8005DE14 01C02025 */  or         $a0, $t6, $zero
/* 5EA18 8005DE18 0320F809 */  jalr       $t9
/* 5EA1C 8005DE1C 00002825 */   or        $a1, $zero, $zero
/* 5EA20 8005DE20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5EA24 8005DE24 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5EA28 8005DE28 03E00008 */  jr         $ra
/* 5EA2C 8005DE2C 00000000 */   nop
