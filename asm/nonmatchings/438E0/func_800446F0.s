glabel func_800446F0
/* 452F0 800446F0 3C048018 */  lui        $a0, %hi(D_801782C0)
/* 452F4 800446F4 948482C0 */  lhu        $a0, %lo(D_801782C0)($a0)
/* 452F8 800446F8 3C0F8010 */  lui        $t7, 0x8010
/* 452FC 800446FC 000470C0 */  sll        $t6, $a0, 3
/* 45300 80044700 3C18800D */  lui        $t8, %hi(D_800D37A0)
/* 45304 80044704 01C47021 */  addu       $t6, $t6, $a0
/* 45308 80044708 971837A0 */  lhu        $t8, %lo(D_800D37A0)($t8)
/* 4530C 8004470C 000E7100 */  sll        $t6, $t6, 4
/* 45310 80044710 25EF69E0 */  addiu      $t7, $t7, 0x69e0
/* 45314 80044714 01CF1021 */  addu       $v0, $t6, $t7
/* 45318 80044718 3C038018 */  lui        $v1, %hi(D_801782C2)
/* 4531C 8004471C A4580080 */  sh         $t8, 0x80($v0)
/* 45320 80044720 946382C2 */  lhu        $v1, %lo(D_801782C2)($v1)
/* 45324 80044724 3C09800D */  lui        $t1, %hi(D_800D1958)
/* 45328 80044728 30790003 */  andi       $t9, $v1, 3
/* 4532C 8004472C 00194080 */  sll        $t0, $t9, 2
/* 45330 80044730 01284821 */  addu       $t1, $t1, $t0
/* 45334 80044734 8D291958 */  lw         $t1, %lo(D_800D1958)($t1)
/* 45338 80044738 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4533C 8004473C 24010002 */  addiu      $at, $zero, 2
/* 45340 80044740 AFBF0014 */  sw         $ra, 0x14($sp)
/* 45344 80044744 1721000B */  bne        $t9, $at, .L80044774
/* 45348 80044748 AC49008C */   sw        $t1, 0x8c($v0)
/* 4534C 8004474C 3C048018 */  lui        $a0, %hi(D_80178162)
/* 45350 80044750 94848162 */  lhu        $a0, %lo(D_80178162)($a0)
/* 45354 80044754 0C0071FC */  jal        func_8001C7F0
/* 45358 80044758 00000000 */   nop
/* 4535C 8004475C 14400008 */  bnez       $v0, .L80044780
/* 45360 80044760 00000000 */   nop
/* 45364 80044764 14600006 */  bnez       $v1, .L80044780
/* 45368 80044768 3C048018 */   lui       $a0, %hi(D_801782C0)
/* 4536C 8004476C 948482C0 */  lhu        $a0, %lo(D_801782C0)($a0)
/* 45370 80044770 00000000 */  nop
.L80044774:
/* 45374 80044774 0C00BF52 */  jal        func_8002FD48
/* 45378 80044778 00000000 */   nop
/* 4537C 8004477C 10400007 */  beqz       $v0, .L8004479C
.L80044780:
/* 45380 80044780 3C028018 */   lui       $v0, %hi(D_801782BC)
/* 45384 80044784 8C4282BC */  lw         $v0, %lo(D_801782BC)($v0)
/* 45388 80044788 00000000 */  nop
/* 4538C 8004478C 944A0000 */  lhu        $t2, ($v0)
/* 45390 80044790 00000000 */  nop
/* 45394 80044794 354B4000 */  ori        $t3, $t2, 0x4000
/* 45398 80044798 A44B0000 */  sh         $t3, ($v0)
.L8004479C:
/* 4539C 8004479C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 453A0 800447A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 453A4 800447A4 03E00008 */  jr         $ra
/* 453A8 800447A8 00000000 */   nop