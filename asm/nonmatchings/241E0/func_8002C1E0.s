glabel func_8002C1E0
/* 2CDE0 8002C1E0 AFA60008 */  sw         $a2, 8($sp)
/* 2CDE4 8002C1E4 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 2CDE8 8002C1E8 19C00009 */  blez       $t6, .L8002C210
/* 2CDEC 8002C1EC 01C03025 */   or        $a2, $t6, $zero
.L8002C1F0:
/* 2CDF0 8002C1F0 948F0000 */  lhu        $t7, ($a0)
/* 2CDF4 8002C1F4 24C6FFFF */  addiu      $a2, $a2, -1
/* 2CDF8 8002C1F8 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 2CDFC 8002C1FC 03003025 */  or         $a2, $t8, $zero
/* 2CE00 8002C200 24840002 */  addiu      $a0, $a0, 2
/* 2CE04 8002C204 24A50002 */  addiu      $a1, $a1, 2
/* 2CE08 8002C208 1F00FFF9 */  bgtz       $t8, .L8002C1F0
/* 2CE0C 8002C20C A4AFFFFE */   sh        $t7, -2($a1)
.L8002C210:
/* 2CE10 8002C210 03E00008 */  jr         $ra
/* 2CE14 8002C214 00000000 */   nop
