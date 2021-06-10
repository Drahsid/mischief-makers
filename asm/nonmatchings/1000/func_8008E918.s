glabel func_8008E918
/* 8F518 8008E918 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8F51C 8008E91C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8F520 8008E920 AFA40018 */  sw         $a0, 0x18($sp)
/* 8F524 8008E924 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8F528 8008E928 3C05800F */  lui        $a1, %hi(D_800E8BEC)
/* 8F52C 8008E92C 01C02025 */  or         $a0, $t6, $zero
/* 8F530 8008E930 0C0205E4 */  jal        func_80081790
/* 8F534 8008E934 24A58BEC */   addiu     $a1, $a1, %lo(D_800E8BEC)
/* 8F538 8008E938 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8F53C 8008E93C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8F540 8008E940 03E00008 */  jr         $ra
/* 8F544 8008E944 00000000 */   nop
