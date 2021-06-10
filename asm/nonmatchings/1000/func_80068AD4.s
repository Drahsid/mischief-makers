glabel func_80068AD4
/* 696D4 80068AD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 696D8 80068AD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 696DC 80068ADC 24040040 */  addiu      $a0, $zero, 0x40
/* 696E0 80068AE0 24050080 */  addiu      $a1, $zero, 0x80
/* 696E4 80068AE4 24060040 */  addiu      $a2, $zero, 0x40
/* 696E8 80068AE8 0C00A756 */  jal        func_80029D58
/* 696EC 80068AEC 2407FFC0 */   addiu     $a3, $zero, -0x40
/* 696F0 80068AF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 696F4 80068AF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 696F8 80068AF8 03E00008 */  jr         $ra
/* 696FC 80068AFC 00000000 */   nop
