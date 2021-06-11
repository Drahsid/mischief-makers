glabel func_80069EC4
/* 6AAC4 80069EC4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6AAC8 80069EC8 000E7880 */  sll        $t7, $t6, 2
/* 6AACC 80069ECC 01EE7823 */  subu       $t7, $t7, $t6
/* 6AAD0 80069ED0 000F7880 */  sll        $t7, $t7, 2
/* 6AAD4 80069ED4 01EE7821 */  addu       $t7, $t7, $t6
/* 6AAD8 80069ED8 000F7880 */  sll        $t7, $t7, 2
/* 6AADC 80069EDC 01EE7823 */  subu       $t7, $t7, $t6
/* 6AAE0 80069EE0 3C18800F */  lui        $t8, %hi(gActors)
/* 6AAE4 80069EE4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6AAE8 80069EE8 000F78C0 */  sll        $t7, $t7, 3
/* 6AAEC 80069EEC 44856000 */  mtc1       $a1, $f12
/* 6AAF0 80069EF0 44802000 */  mtc1       $zero, $f4
/* 6AAF4 80069EF4 01F81021 */  addu       $v0, $t7, $t8
/* 6AAF8 80069EF8 24190090 */  addiu      $t9, $zero, 0x90
/* 6AAFC 80069EFC AFA40000 */  sw         $a0, ($sp)
/* 6AB00 80069F00 A45900D0 */  sh         $t9, 0xd0($v0)
/* 6AB04 80069F04 E44C0118 */  swc1       $f12, 0x118($v0)
/* 6AB08 80069F08 03E00008 */  jr         $ra
/* 6AB0C 80069F0C E444011C */   swc1      $f4, 0x11c($v0)
