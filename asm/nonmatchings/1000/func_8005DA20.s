glabel func_8005DA20
/* 5E620 8005DA20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E624 8005DA24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E628 8005DA28 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E62C 8005DA2C AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E630 8005DA30 3C188019 */  lui        $t8, %hi(D_8019203C)
/* 5E634 8005DA34 8F19203C */  lw         $t9, %lo(D_8019203C)($t8)
/* 5E638 8005DA38 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E63C 8005DA3C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E640 8005DA40 01E02825 */  or         $a1, $t7, $zero
/* 5E644 8005DA44 0320F809 */  jalr       $t9
/* 5E648 8005DA48 01C02025 */   or        $a0, $t6, $zero
/* 5E64C 8005DA4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E650 8005DA50 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E654 8005DA54 03E00008 */  jr         $ra
/* 5E658 8005DA58 00000000 */   nop
