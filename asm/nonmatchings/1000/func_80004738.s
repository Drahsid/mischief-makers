glabel func_80004738
/* 5338 80004738 3C01800C */  lui        $at, %hi(D_800C4EC4)
/* 533C 8000473C AC244EC4 */  sw         $a0, %lo(D_800C4EC4)($at)
/* 5340 80004740 3C01800C */  lui        $at, %hi(D_800C4EC8)
/* 5344 80004744 03E00008 */  jr         $ra
/* 5348 80004748 AC254EC8 */   sw        $a1, %lo(D_800C4EC8)($at)
