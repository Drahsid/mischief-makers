glabel func_8003480C
/* 3540C 8003480C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 35410 80034810 000E7880 */  sll        $t7, $t6, 2
/* 35414 80034814 01EE7823 */  subu       $t7, $t7, $t6
/* 35418 80034818 000F7880 */  sll        $t7, $t7, 2
/* 3541C 8003481C 01EE7821 */  addu       $t7, $t7, $t6
/* 35420 80034820 000F7880 */  sll        $t7, $t7, 2
/* 35424 80034824 01EE7823 */  subu       $t7, $t7, $t6
/* 35428 80034828 3C18800F */  lui        $t8, %hi(gActors)
/* 3542C 8003482C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 35430 80034830 000F78C0 */  sll        $t7, $t7, 3
/* 35434 80034834 3C0142F0 */  lui        $at, 0x42f0
/* 35438 80034838 01F81021 */  addu       $v0, $t7, $t8
/* 3543C 8003483C 44811000 */  mtc1       $at, $f2
/* 35440 80034840 C44400B4 */  lwc1       $f4, 0xb4($v0)
/* 35444 80034844 C44600B8 */  lwc1       $f6, 0xb8($v0)
/* 35448 80034848 46022003 */  div.s      $f0, $f4, $f2
/* 3544C 8003484C 3C01800F */  lui        $at, %hi(D_800EB9A8)
/* 35450 80034850 C42DB9A8 */  lwc1       $f13, %lo(D_800EB9A8)($at)
/* 35454 80034854 C42CB9AC */  lwc1       $f12, -0x4654($at)
/* 35458 80034858 94480094 */  lhu        $t0, 0x94($v0)
/* 3545C 8003485C 2419002D */  addiu      $t9, $zero, 0x2d
/* 35460 80034860 31090200 */  andi       $t1, $t0, 0x200
/* 35464 80034864 252A0001 */  addiu      $t2, $t1, 1
/* 35468 80034868 240B0003 */  addiu      $t3, $zero, 3
/* 3546C 8003486C AFA40000 */  sw         $a0, ($sp)
/* 35470 80034870 AFA50004 */  sw         $a1, 4($sp)
/* 35474 80034874 A45900D2 */  sh         $t9, 0xd2($v0)
/* 35478 80034878 46023203 */  div.s      $f8, $f6, $f2
/* 3547C 8003487C 460002A1 */  cvt.d.s    $f10, $f0
/* 35480 80034880 462C503C */  c.lt.d     $f10, $f12
/* 35484 80034884 A44A0094 */  sh         $t2, 0x94($v0)
/* 35488 80034888 AC4B0080 */  sw         $t3, 0x80($v0)
/* 3548C 8003488C AC4000EC */  sw         $zero, 0xec($v0)
/* 35490 80034890 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 35494 80034894 AC4000F4 */  sw         $zero, 0xf4($v0)
/* 35498 80034898 E4400114 */  swc1       $f0, 0x114($v0)
/* 3549C 8003489C 3C01800F */  lui        $at, %hi(D_800EB9B0)
/* 354A0 800348A0 45000004 */  bc1f       .L800348B4
/* 354A4 800348A4 E4480118 */   swc1      $f8, 0x118($v0)
/* 354A8 800348A8 C430B9B0 */  lwc1       $f16, %lo(D_800EB9B0)($at)
/* 354AC 800348AC 00000000 */  nop
/* 354B0 800348B0 E4500114 */  swc1       $f16, 0x114($v0)
.L800348B4:
/* 354B4 800348B4 C4520118 */  lwc1       $f18, 0x118($v0)
/* 354B8 800348B8 3C01800F */  lui        $at, 0x800f
/* 354BC 800348BC 46009121 */  cvt.d.s    $f4, $f18
/* 354C0 800348C0 462C203C */  c.lt.d     $f4, $f12
/* 354C4 800348C4 00000000 */  nop
/* 354C8 800348C8 45000004 */  bc1f       .L800348DC
/* 354CC 800348CC 00000000 */   nop
/* 354D0 800348D0 C426B9B4 */  lwc1       $f6, -0x464c($at)
/* 354D4 800348D4 00000000 */  nop
/* 354D8 800348D8 E4460118 */  swc1       $f6, 0x118($v0)
.L800348DC:
/* 354DC 800348DC 03E00008 */  jr         $ra
/* 354E0 800348E0 00000000 */   nop