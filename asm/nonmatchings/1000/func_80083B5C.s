glabel func_80083B5C
/* 8475C 80083B5C 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 84760 80083B60 AFA60090 */  sw         $a2, 0x90($sp)
/* 84764 80083B64 00803825 */  or         $a3, $a0, $zero
/* 84768 80083B68 AFA5008C */  sw         $a1, 0x8c($sp)
/* 8476C 80083B6C 00E03025 */  or         $a2, $a3, $zero
/* 84770 80083B70 AFBF002C */  sw         $ra, 0x2c($sp)
/* 84774 80083B74 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 84778 80083B78 3C05800F */  lui        $a1, %hi(D_800ED088)
/* 8477C 80083B7C 24A5D088 */  addiu      $a1, $a1, %lo(D_800ED088)
/* 84780 80083B80 01C03025 */  or         $a2, $t6, $zero
/* 84784 80083B84 0C029590 */  jal        func_800A5640
/* 84788 80083B88 27A40034 */   addiu     $a0, $sp, 0x34
/* 8478C 80083B8C 3C013F80 */  lui        $at, 0x3f80
/* 84790 80083B90 44810000 */  mtc1       $at, $f0
/* 84794 80083B94 8FA5008C */  lw         $a1, 0x8c($sp)
/* 84798 80083B98 8FA60090 */  lw         $a2, 0x90($sp)
/* 8479C 80083B9C 240F00FF */  addiu      $t7, $zero, 0xff
/* 847A0 80083BA0 241800FF */  addiu      $t8, $zero, 0xff
/* 847A4 80083BA4 241900FF */  addiu      $t9, $zero, 0xff
/* 847A8 80083BA8 AFB90018 */  sw         $t9, 0x18($sp)
/* 847AC 80083BAC AFB80014 */  sw         $t8, 0x14($sp)
/* 847B0 80083BB0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 847B4 80083BB4 27A40034 */  addiu      $a0, $sp, 0x34
/* 847B8 80083BB8 240700FF */  addiu      $a3, $zero, 0xff
/* 847BC 80083BBC E7A0001C */  swc1       $f0, 0x1c($sp)
/* 847C0 80083BC0 0C020E47 */  jal        func_8008391C
/* 847C4 80083BC4 E7A00020 */   swc1      $f0, 0x20($sp)
/* 847C8 80083BC8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 847CC 80083BCC 27BD0088 */  addiu      $sp, $sp, 0x88
/* 847D0 80083BD0 03E00008 */  jr         $ra
/* 847D4 80083BD4 00000000 */   nop
