glabel func_80023E48
/* 24A48 80023E48 3C0E800C */  lui        $t6, %hi(D_800BE558)
/* 24A4C 80023E4C 3C0F800C */  lui        $t7, %hi(D_800BE560)
/* 24A50 80023E50 85EFE560 */  lh         $t7, %lo(D_800BE560)($t7)
/* 24A54 80023E54 85CEE558 */  lh         $t6, %lo(D_800BE558)($t6)
/* 24A58 80023E58 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 24A5C 80023E5C 01CFC023 */  subu       $t8, $t6, $t7
/* 24A60 80023E60 0018CC00 */  sll        $t9, $t8, 0x10
/* 24A64 80023E64 03E00008 */  jr         $ra
/* 24A68 80023E68 AC39E73C */   sw        $t9, %lo(D_800BE73C)($at)
