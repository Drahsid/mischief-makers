glabel func_80004760
/* 5360 80004760 3C01800C */  lui        $at, %hi(D_800C4ED0)
/* 5364 80004764 E42D4ED0 */  swc1       $f13, %lo(D_800C4ED0)($at)
/* 5368 80004768 E42C4ED4 */  swc1       $f12, 0x4ed4($at)
/* 536C 8000476C 3C01800C */  lui        $at, %hi(D_800C4ED8)
/* 5370 80004770 E42F4ED8 */  swc1       $f15, %lo(D_800C4ED8)($at)
/* 5374 80004774 03E00008 */  jr         $ra
/* 5378 80004778 E42E4EDC */   swc1      $f14, 0x4edc($at)
