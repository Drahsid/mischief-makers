glabel func_800251CC
/* 25DCC 800251CC 240E0002 */  addiu      $t6, $zero, 2
/* 25DD0 800251D0 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 25DD4 800251D4 A42EE57C */  sh         $t6, %lo(D_800BE57C)($at)
/* 25DD8 800251D8 3C01800C */  lui        $at, %hi(D_800BE584)
/* 25DDC 800251DC 240FFFF4 */  addiu      $t7, $zero, -0xc
/* 25DE0 800251E0 03E00008 */  jr         $ra
/* 25DE4 800251E4 A42FE584 */   sh        $t7, %lo(D_800BE584)($at)
