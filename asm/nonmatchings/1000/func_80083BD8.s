glabel func_80083BD8
/* 847D8 80083BD8 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 847DC 80083BDC AFA60090 */  sw         $a2, 0x90($sp)
/* 847E0 80083BE0 00803825 */  or         $a3, $a0, $zero
/* 847E4 80083BE4 AFA5008C */  sw         $a1, 0x8c($sp)
/* 847E8 80083BE8 00E03025 */  or         $a2, $a3, $zero
/* 847EC 80083BEC AFBF002C */  sw         $ra, 0x2c($sp)
/* 847F0 80083BF0 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 847F4 80083BF4 3C05800F */  lui        $a1, %hi(D_800ED090)
/* 847F8 80083BF8 24A5D090 */  addiu      $a1, $a1, %lo(D_800ED090)
/* 847FC 80083BFC 01C03025 */  or         $a2, $t6, $zero
/* 84800 80083C00 0C029590 */  jal        func_800A5640
/* 84804 80083C04 27A40034 */   addiu     $a0, $sp, 0x34
/* 84808 80083C08 3C013F80 */  lui        $at, 0x3f80
/* 8480C 80083C0C 44810000 */  mtc1       $at, $f0
/* 84810 80083C10 8FA5008C */  lw         $a1, 0x8c($sp)
/* 84814 80083C14 8FA60090 */  lw         $a2, 0x90($sp)
/* 84818 80083C18 240F00FF */  addiu      $t7, $zero, 0xff
/* 8481C 80083C1C 241800FF */  addiu      $t8, $zero, 0xff
/* 84820 80083C20 241900FF */  addiu      $t9, $zero, 0xff
/* 84824 80083C24 AFB90018 */  sw         $t9, 0x18($sp)
/* 84828 80083C28 AFB80014 */  sw         $t8, 0x14($sp)
/* 8482C 80083C2C AFAF0010 */  sw         $t7, 0x10($sp)
/* 84830 80083C30 27A40034 */  addiu      $a0, $sp, 0x34
/* 84834 80083C34 240700FF */  addiu      $a3, $zero, 0xff
/* 84838 80083C38 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 8483C 80083C3C 0C020E47 */  jal        func_8008391C
/* 84840 80083C40 E7A00020 */   swc1      $f0, 0x20($sp)
/* 84844 80083C44 8FBF002C */  lw         $ra, 0x2c($sp)
/* 84848 80083C48 27BD0088 */  addiu      $sp, $sp, 0x88
/* 8484C 80083C4C 03E00008 */  jr         $ra
/* 84850 80083C50 00000000 */   nop
