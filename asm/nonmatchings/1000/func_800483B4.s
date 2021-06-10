glabel func_800483B4
/* 48FB4 800483B4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 48FB8 800483B8 000E7880 */  sll        $t7, $t6, 2
/* 48FBC 800483BC 01EE7823 */  subu       $t7, $t7, $t6
/* 48FC0 800483C0 000F7880 */  sll        $t7, $t7, 2
/* 48FC4 800483C4 01EE7821 */  addu       $t7, $t7, $t6
/* 48FC8 800483C8 000F7880 */  sll        $t7, $t7, 2
/* 48FCC 800483CC 01EE7823 */  subu       $t7, $t7, $t6
/* 48FD0 800483D0 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 48FD4 800483D4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 48FD8 800483D8 000F78C0 */  sll        $t7, $t7, 3
/* 48FDC 800483DC 01F81021 */  addu       $v0, $t7, $t8
/* 48FE0 800483E0 905900D1 */  lbu        $t9, 0xd1($v0)
/* 48FE4 800483E4 24010003 */  addiu      $at, $zero, 3
/* 48FE8 800483E8 17210003 */  bne        $t9, $at, .L800483F8
/* 48FEC 800483EC AFA40000 */   sw        $a0, ($sp)
/* 48FF0 800483F0 24080258 */  addiu      $t0, $zero, 0x258
/* 48FF4 800483F4 AC480150 */  sw         $t0, 0x150($v0)
.L800483F8:
/* 48FF8 800483F8 24090001 */  addiu      $t1, $zero, 1
/* 48FFC 800483FC 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 49000 80048400 03E00008 */  jr         $ra
/* 49004 80048404 AC29E5F4 */   sw        $t1, %lo(D_800BE5F4)($at)
