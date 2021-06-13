glabel func_8001C834
/* 1D434 8001C834 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D438 8001C838 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1D43C 8001C83C 240E0001 */  addiu      $t6, $zero, 1
/* 1D440 8001C840 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1D444 8001C844 24040032 */  addiu      $a0, $zero, 0x32
/* 1D448 8001C848 00002825 */  or         $a1, $zero, $zero
/* 1D44C 8001C84C 3406FFFC */  ori        $a2, $zero, 0xfffc
/* 1D450 8001C850 0C009CFF */  jal        func_800273FC
/* 1D454 8001C854 24070033 */   addiu     $a3, $zero, 0x33
/* 1D458 8001C858 3C0F800F */  lui        $t7, %hi(D_800F4540)
/* 1D45C 8001C85C 8DEF4540 */  lw         $t7, %lo(D_800F4540)($t7)
/* 1D460 8001C860 3C015000 */  lui        $at, 0x5000
/* 1D464 8001C864 01E1C025 */  or         $t8, $t7, $at
/* 1D468 8001C868 3C01800F */  lui        $at, %hi(D_800F4540)
/* 1D46C 8001C86C 24190001 */  addiu      $t9, $zero, 1
/* 1D470 8001C870 AC384540 */  sw         $t8, %lo(D_800F4540)($at)
/* 1D474 8001C874 AFB90010 */  sw         $t9, 0x10($sp)
/* 1D478 8001C878 24040033 */  addiu      $a0, $zero, 0x33
/* 1D47C 8001C87C 00002825 */  or         $a1, $zero, $zero
/* 1D480 8001C880 3406FFFC */  ori        $a2, $zero, 0xfffc
/* 1D484 8001C884 0C009CFF */  jal        func_800273FC
/* 1D488 8001C888 3407FFF7 */   ori       $a3, $zero, 0xfff7
/* 1D48C 8001C88C 3C08800F */  lui        $t0, %hi(D_800F46D8)
/* 1D490 8001C890 8D0846D8 */  lw         $t0, %lo(D_800F46D8)($t0)
/* 1D494 8001C894 3C017000 */  lui        $at, 0x7000
/* 1D498 8001C898 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1D49C 8001C89C 01014825 */  or         $t1, $t0, $at
/* 1D4A0 8001C8A0 3C01800F */  lui        $at, %hi(D_800F46D8)
/* 1D4A4 8001C8A4 AC2946D8 */  sw         $t1, %lo(D_800F46D8)($at)
/* 1D4A8 8001C8A8 03E00008 */  jr         $ra
/* 1D4AC 8001C8AC 27BD0020 */   addiu     $sp, $sp, 0x20
