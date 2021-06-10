glabel func_8005D7BC
/* 5E3BC 8005D7BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E3C0 8005D7C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E3C4 8005D7C4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E3C8 8005D7C8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E3CC 8005D7CC 3C18801A */  lui        $t8, %hi(D_8019B018)
/* 5E3D0 8005D7D0 8F19B018 */  lw         $t9, %lo(D_8019B018)($t8)
/* 5E3D4 8005D7D4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E3D8 8005D7D8 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E3DC 8005D7DC 01E02825 */  or         $a1, $t7, $zero
/* 5E3E0 8005D7E0 0320F809 */  jalr       $t9
/* 5E3E4 8005D7E4 01C02025 */   or        $a0, $t6, $zero
/* 5E3E8 8005D7E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E3EC 8005D7EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E3F0 8005D7F0 03E00008 */  jr         $ra
/* 5E3F4 8005D7F4 00000000 */   nop
