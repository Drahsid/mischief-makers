glabel func_8005DA5C
/* 5E65C 8005DA5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E660 8005DA60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E664 8005DA64 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E668 8005DA68 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E66C 8005DA6C 3C188019 */  lui        $t8, %hi(D_80192064)
/* 5E670 8005DA70 8F192064 */  lw         $t9, %lo(D_80192064)($t8)
/* 5E674 8005DA74 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E678 8005DA78 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E67C 8005DA7C 01E02825 */  or         $a1, $t7, $zero
/* 5E680 8005DA80 0320F809 */  jalr       $t9
/* 5E684 8005DA84 01C02025 */   or        $a0, $t6, $zero
/* 5E688 8005DA88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E68C 8005DA8C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E690 8005DA90 03E00008 */  jr         $ra
/* 5E694 8005DA94 00000000 */   nop
