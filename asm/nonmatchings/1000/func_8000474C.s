glabel func_8000474C
/* 534C 8000474C 3C01800C */  lui        $at, %hi(D_800C4EBC)
/* 5350 80004750 AC244EBC */  sw         $a0, %lo(D_800C4EBC)($at)
/* 5354 80004754 3C01800C */  lui        $at, %hi(D_800C4EC0)
/* 5358 80004758 03E00008 */  jr         $ra
/* 535C 8000475C AC254EC0 */   sw        $a1, %lo(D_800C4EC0)($at)
