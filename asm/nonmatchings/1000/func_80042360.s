glabel func_80042360
/* 42F60 80042360 308EFFFF */  andi       $t6, $a0, 0xffff
/* 42F64 80042364 000E7880 */  sll        $t7, $t6, 2
/* 42F68 80042368 01EE7823 */  subu       $t7, $t7, $t6
/* 42F6C 8004236C 000F7880 */  sll        $t7, $t7, 2
/* 42F70 80042370 01EE7821 */  addu       $t7, $t7, $t6
/* 42F74 80042374 000F7880 */  sll        $t7, $t7, 2
/* 42F78 80042378 01EE7823 */  subu       $t7, $t7, $t6
/* 42F7C 8004237C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 42F80 80042380 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 42F84 80042384 000F78C0 */  sll        $t7, $t7, 3
/* 42F88 80042388 01F81021 */  addu       $v0, $t7, $t8
/* 42F8C 8004238C 945900D0 */  lhu        $t9, 0xd0($v0)
/* 42F90 80042390 AFA40000 */  sw         $a0, ($sp)
/* 42F94 80042394 27280001 */  addiu      $t0, $t9, 1
/* 42F98 80042398 03E00008 */  jr         $ra
/* 42F9C 8004239C A44800D0 */   sh        $t0, 0xd0($v0)
