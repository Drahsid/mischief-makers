glabel func_80024600
/* 25200 80024600 3C0E800C */  lui        $t6, %hi(D_800BE558)
/* 25204 80024604 3C0F800C */  lui        $t7, %hi(D_800BE560)
/* 25208 80024608 85EFE560 */  lh         $t7, %lo(D_800BE560)($t7)
/* 2520C 8002460C 85CEE558 */  lh         $t6, %lo(D_800BE558)($t6)
/* 25210 80024610 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 25214 80024614 01CFC023 */  subu       $t8, $t6, $t7
/* 25218 80024618 0018CC00 */  sll        $t9, $t8, 0x10
/* 2521C 8002461C 03E00008 */  jr         $ra
/* 25220 80024620 AC39E73C */   sw        $t9, %lo(D_800BE73C)($at)
