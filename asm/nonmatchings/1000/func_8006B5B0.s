glabel func_8006B5B0
/* 6C1B0 8006B5B0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6C1B4 8006B5B4 000E7880 */  sll        $t7, $t6, 2
/* 6C1B8 8006B5B8 01EE7823 */  subu       $t7, $t7, $t6
/* 6C1BC 8006B5BC 000F7880 */  sll        $t7, $t7, 2
/* 6C1C0 8006B5C0 01EE7821 */  addu       $t7, $t7, $t6
/* 6C1C4 8006B5C4 000F7880 */  sll        $t7, $t7, 2
/* 6C1C8 8006B5C8 01EE7823 */  subu       $t7, $t7, $t6
/* 6C1CC 8006B5CC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6C1D0 8006B5D0 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6C1D4 8006B5D4 000F78C0 */  sll        $t7, $t7, 3
/* 6C1D8 8006B5D8 01F81021 */  addu       $v0, $t7, $t8
/* 6C1DC 8006B5DC 8C490080 */  lw         $t1, 0x80($v0)
/* 6C1E0 8006B5E0 3C010001 */  lui        $at, 1
/* 6C1E4 8006B5E4 01215025 */  or         $t2, $t1, $at
/* 6C1E8 8006B5E8 3C01FFFD */  lui        $at, 0xfffd
/* 6C1EC 8006B5EC 3421FFFF */  ori        $at, $at, 0xffff
/* 6C1F0 8006B5F0 945900D0 */  lhu        $t9, 0xd0($v0)
/* 6C1F4 8006B5F4 01416024 */  and        $t4, $t2, $at
/* 6C1F8 8006B5F8 8C4D0098 */  lw         $t5, 0x98($v0)
/* 6C1FC 8006B5FC 44802000 */  mtc1       $zero, $f4
/* 6C200 8006B600 2401FFBF */  addiu      $at, $zero, -0x41
/* 6C204 8006B604 31980020 */  andi       $t8, $t4, 0x20
/* 6C208 8006B608 27280001 */  addiu      $t0, $t9, 1
/* 6C20C 8006B60C AC4A0080 */  sw         $t2, 0x80($v0)
/* 6C210 8006B610 240F0001 */  addiu      $t7, $zero, 1
/* 6C214 8006B614 3B190020 */  xori       $t9, $t8, 0x20
/* 6C218 8006B618 01A17024 */  and        $t6, $t5, $at
/* 6C21C 8006B61C AFA40000 */  sw         $a0, ($sp)
/* 6C220 8006B620 A44800D0 */  sh         $t0, 0xd0($v0)
/* 6C224 8006B624 AC4E0098 */  sw         $t6, 0x98($v0)
/* 6C228 8006B628 AC4C0080 */  sw         $t4, 0x80($v0)
/* 6C22C 8006B62C A44F00E6 */  sh         $t7, 0xe6($v0)
/* 6C230 8006B630 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 6C234 8006B634 AC580158 */  sw         $t8, 0x158($v0)
/* 6C238 8006B638 AC59015C */  sw         $t9, 0x15c($v0)
/* 6C23C 8006B63C AC400160 */  sw         $zero, 0x160($v0)
/* 6C240 8006B640 03E00008 */  jr         $ra
/* 6C244 8006B644 E4440118 */   swc1      $f4, 0x118($v0)
