glabel func_800463C0
/* 46FC0 800463C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 46FC4 800463C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 46FC8 800463C8 0C0118BC */  jal        func_800462F0
/* 46FCC 800463CC 00000000 */   nop
/* 46FD0 800463D0 3C0E800C */  lui        $t6, %hi(D_800BE558)
/* 46FD4 800463D4 85CEE558 */  lh         $t6, %lo(D_800BE558)($t6)
/* 46FD8 800463D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 46FDC 800463DC 3C01800C */  lui        $at, %hi(D_800BE568)
/* 46FE0 800463E0 25CFFF70 */  addiu      $t7, $t6, -0x90
/* 46FE4 800463E4 A42FE568 */  sh         $t7, %lo(D_800BE568)($at)
/* 46FE8 800463E8 03E00008 */  jr         $ra
/* 46FEC 800463EC 27BD0018 */   addiu     $sp, $sp, 0x18
