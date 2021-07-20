glabel func_80024D5C
/* 2595C 80024D5C 240E0003 */  addiu      $t6, $zero, 3
/* 25960 80024D60 3C01800C */  lui        $at, %hi(D_800BE588)
/* 25964 80024D64 03E00008 */  jr         $ra
/* 25968 80024D68 A42EE588 */   sh        $t6, %lo(D_800BE588)($at)
