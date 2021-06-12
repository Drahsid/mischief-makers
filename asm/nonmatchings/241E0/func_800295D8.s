glabel func_800295D8
/* 2A1D8 800295D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2A1DC 800295DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2A1E0 800295E0 0C00A538 */  jal        func_800294E0
/* 2A1E4 800295E4 00000000 */   nop
/* 2A1E8 800295E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2A1EC 800295EC 24420100 */  addiu      $v0, $v0, 0x100
/* 2A1F0 800295F0 304E0200 */  andi       $t6, $v0, 0x200
/* 2A1F4 800295F4 01C01025 */  or         $v0, $t6, $zero
/* 2A1F8 800295F8 03E00008 */  jr         $ra
/* 2A1FC 800295FC 27BD0018 */   addiu     $sp, $sp, 0x18
