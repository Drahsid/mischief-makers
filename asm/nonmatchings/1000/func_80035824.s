glabel func_80035824
/* 36424 80035824 308EFFFF */  andi       $t6, $a0, 0xffff
/* 36428 80035828 000E7880 */  sll        $t7, $t6, 2
/* 3642C 8003582C 01EE7823 */  subu       $t7, $t7, $t6
/* 36430 80035830 000F7880 */  sll        $t7, $t7, 2
/* 36434 80035834 01EE7821 */  addu       $t7, $t7, $t6
/* 36438 80035838 000F7880 */  sll        $t7, $t7, 2
/* 3643C 8003583C 01EE7823 */  subu       $t7, $t7, $t6
/* 36440 80035840 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 36444 80035844 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 36448 80035848 000F78C0 */  sll        $t7, $t7, 3
/* 3644C 8003584C 01F81021 */  addu       $v0, $t7, $t8
/* 36450 80035850 24190014 */  addiu      $t9, $zero, 0x14
/* 36454 80035854 24080006 */  addiu      $t0, $zero, 6
/* 36458 80035858 2409FFF8 */  addiu      $t1, $zero, -8
/* 3645C 8003585C 240A0008 */  addiu      $t2, $zero, 8
/* 36460 80035860 AFA40000 */  sw         $a0, ($sp)
/* 36464 80035864 A45900A6 */  sh         $t9, 0xa6($v0)
/* 36468 80035868 A44800A8 */  sh         $t0, 0xa8($v0)
/* 3646C 8003586C A44900A2 */  sh         $t1, 0xa2($v0)
/* 36470 80035870 03E00008 */  jr         $ra
/* 36474 80035874 A44A00A4 */   sh        $t2, 0xa4($v0)
