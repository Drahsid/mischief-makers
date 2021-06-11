glabel func_80080190
/* 80D90 80080190 308EFFFF */  andi       $t6, $a0, 0xffff
/* 80D94 80080194 000E7880 */  sll        $t7, $t6, 2
/* 80D98 80080198 01EE7823 */  subu       $t7, $t7, $t6
/* 80D9C 8008019C 000F7880 */  sll        $t7, $t7, 2
/* 80DA0 800801A0 01EE7821 */  addu       $t7, $t7, $t6
/* 80DA4 800801A4 000F7880 */  sll        $t7, $t7, 2
/* 80DA8 800801A8 01EE7823 */  subu       $t7, $t7, $t6
/* 80DAC 800801AC 3C18800F */  lui        $t8, %hi(gActors)
/* 80DB0 800801B0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 80DB4 800801B4 000F78C0 */  sll        $t7, $t7, 3
/* 80DB8 800801B8 01F81021 */  addu       $v0, $t7, $t8
/* 80DBC 800801BC 8C590098 */  lw         $t9, 0x98($v0)
/* 80DC0 800801C0 3C01FFDF */  lui        $at, 0xffdf
/* 80DC4 800801C4 3421F9FF */  ori        $at, $at, 0xf9ff
/* 80DC8 800801C8 03214024 */  and        $t0, $t9, $at
/* 80DCC 800801CC AFA40000 */  sw         $a0, ($sp)
/* 80DD0 800801D0 03E00008 */  jr         $ra
/* 80DD4 800801D4 AC480098 */   sw        $t0, 0x98($v0)
