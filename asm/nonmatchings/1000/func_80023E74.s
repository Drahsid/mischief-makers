glabel func_80023E74
/* 24A74 80023E74 3C0E800C */  lui        $t6, %hi(D_800BE558)
/* 24A78 80023E78 3C0F800C */  lui        $t7, %hi(D_800BE560)
/* 24A7C 80023E7C 85EFE560 */  lh         $t7, %lo(D_800BE560)($t7)
/* 24A80 80023E80 85CEE558 */  lh         $t6, %lo(D_800BE558)($t6)
/* 24A84 80023E84 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 24A88 80023E88 01CFC023 */  subu       $t8, $t6, $t7
/* 24A8C 80023E8C 0018CC00 */  sll        $t9, $t8, 0x10
/* 24A90 80023E90 03E00008 */  jr         $ra
/* 24A94 80023E94 AC39E73C */   sw        $t9, %lo(D_800BE73C)($at)
