glabel func_80023E98
/* 24A98 80023E98 240E0002 */  addiu      $t6, $zero, 2
/* 24A9C 80023E9C 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 24AA0 80023EA0 A42EE57C */  sh         $t6, %lo(D_800BE57C)($at)
/* 24AA4 80023EA4 3C01800C */  lui        $at, %hi(D_800BE584)
/* 24AA8 80023EA8 240FFFF4 */  addiu      $t7, $zero, -0xc
/* 24AAC 80023EAC 03E00008 */  jr         $ra
/* 24AB0 80023EB0 A42FE584 */   sh        $t7, %lo(D_800BE584)($at)
