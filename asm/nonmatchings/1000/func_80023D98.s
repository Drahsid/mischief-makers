glabel func_80023D98
/* 24998 80023D98 240E0002 */  addiu      $t6, $zero, 2
/* 2499C 80023D9C 3C01800C */  lui        $at, %hi(D_800BE578)
/* 249A0 80023DA0 A42EE578 */  sh         $t6, %lo(D_800BE578)($at)
/* 249A4 80023DA4 3C01800C */  lui        $at, %hi(D_800BE580)
/* 249A8 80023DA8 240FFFF4 */  addiu      $t7, $zero, -0xc
/* 249AC 80023DAC 03E00008 */  jr         $ra
/* 249B0 80023DB0 A42FE580 */   sh        $t7, %lo(D_800BE580)($at)
