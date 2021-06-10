glabel func_80023E1C
/* 24A1C 80023E1C 240E0002 */  addiu      $t6, $zero, 2
/* 24A20 80023E20 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 24A24 80023E24 A42EE57C */  sh         $t6, %lo(D_800BE57C)($at)
/* 24A28 80023E28 3C01800C */  lui        $at, %hi(D_800BE584)
/* 24A2C 80023E2C 240FFFF4 */  addiu      $t7, $zero, -0xc
/* 24A30 80023E30 03E00008 */  jr         $ra
/* 24A34 80023E34 A42FE584 */   sh        $t7, %lo(D_800BE584)($at)
