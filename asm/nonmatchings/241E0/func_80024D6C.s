glabel func_80024D6C
/* 2596C 80024D6C 3C0E800C */  lui        $t6, %hi(D_800BE558)
/* 25970 80024D70 3C0F800C */  lui        $t7, %hi(D_800BE560)
/* 25974 80024D74 85EFE560 */  lh         $t7, %lo(D_800BE560)($t7)
/* 25978 80024D78 85CEE558 */  lh         $t6, %lo(D_800BE558)($t6)
/* 2597C 80024D7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25980 80024D80 01CFC023 */  subu       $t8, $t6, $t7
/* 25984 80024D84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 25988 80024D88 0018CC00 */  sll        $t9, $t8, 0x10
/* 2598C 80024D8C 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 25990 80024D90 0C009223 */  jal        func_8002488C
/* 25994 80024D94 AC39E73C */   sw        $t9, %lo(D_800BE73C)($at)
/* 25998 80024D98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2599C 80024D9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 259A0 80024DA0 03E00008 */  jr         $ra
/* 259A4 80024DA4 00000000 */   nop
