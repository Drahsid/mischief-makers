glabel func_8006A724
/* 6B324 8006A724 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6B328 8006A728 000E7880 */  sll        $t7, $t6, 2
/* 6B32C 8006A72C 01EE7823 */  subu       $t7, $t7, $t6
/* 6B330 8006A730 000F7880 */  sll        $t7, $t7, 2
/* 6B334 8006A734 01EE7821 */  addu       $t7, $t7, $t6
/* 6B338 8006A738 000F7880 */  sll        $t7, $t7, 2
/* 6B33C 8006A73C 01EE7823 */  subu       $t7, $t7, $t6
/* 6B340 8006A740 3C18800F */  lui        $t8, %hi(gActors)
/* 6B344 8006A744 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6B348 8006A748 000F78C0 */  sll        $t7, $t7, 3
/* 6B34C 8006A74C 01F81021 */  addu       $v0, $t7, $t8
/* 6B350 8006A750 8C590080 */  lw         $t9, 0x80($v0)
/* 6B354 8006A754 3C010002 */  lui        $at, 2
/* 6B358 8006A758 03214025 */  or         $t0, $t9, $at
/* 6B35C 8006A75C 3C01FFFE */  lui        $at, 0xfffe
/* 6B360 8006A760 3421FFFF */  ori        $at, $at, 0xffff
/* 6B364 8006A764 8C4B0098 */  lw         $t3, 0x98($v0)
/* 6B368 8006A768 01015024 */  and        $t2, $t0, $at
/* 6B36C 8006A76C 2401FFDF */  addiu      $at, $zero, -0x21
/* 6B370 8006A770 AC480080 */  sw         $t0, 0x80($v0)
/* 6B374 8006A774 3C0D0010 */  lui        $t5, 0x10
/* 6B378 8006A778 240E0001 */  addiu      $t6, $zero, 1
/* 6B37C 8006A77C 240F1034 */  addiu      $t7, $zero, 0x1034
/* 6B380 8006A780 01616024 */  and        $t4, $t3, $at
/* 6B384 8006A784 AFA40000 */  sw         $a0, ($sp)
/* 6B388 8006A788 AC4C0098 */  sw         $t4, 0x98($v0)
/* 6B38C 8006A78C AC4A0080 */  sw         $t2, 0x80($v0)
/* 6B390 8006A790 AC400158 */  sw         $zero, 0x158($v0)
/* 6B394 8006A794 AC4D015C */  sw         $t5, 0x15c($v0)
/* 6B398 8006A798 AC4E0160 */  sw         $t6, 0x160($v0)
/* 6B39C 8006A79C AC4000EC */  sw         $zero, 0xec($v0)
/* 6B3A0 8006A7A0 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 6B3A4 8006A7A4 A44F0084 */  sh         $t7, 0x84($v0)
/* 6B3A8 8006A7A8 03E00008 */  jr         $ra
/* 6B3AC 8006A7AC A44000E6 */   sh        $zero, 0xe6($v0)
