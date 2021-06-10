glabel func_800744AC
/* 750AC 800744AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 750B0 800744B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 750B4 800744B4 AFA40018 */  sw         $a0, 0x18($sp)
/* 750B8 800744B8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 750BC 800744BC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 750C0 800744C0 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 750C4 800744C4 01E02825 */  or         $a1, $t7, $zero
/* 750C8 800744C8 0C01D0BF */  jal        func_800742FC
/* 750CC 800744CC 01C02025 */   or        $a0, $t6, $zero
/* 750D0 800744D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 750D4 800744D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 750D8 800744D8 03E00008 */  jr         $ra
/* 750DC 800744DC 00000000 */   nop
