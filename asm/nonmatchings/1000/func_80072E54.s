glabel func_80072E54
/* 73A54 80072E54 308EFFFF */  andi       $t6, $a0, 0xffff
/* 73A58 80072E58 000E7880 */  sll        $t7, $t6, 2
/* 73A5C 80072E5C 01EE7823 */  subu       $t7, $t7, $t6
/* 73A60 80072E60 000F7880 */  sll        $t7, $t7, 2
/* 73A64 80072E64 01EE7821 */  addu       $t7, $t7, $t6
/* 73A68 80072E68 000F7880 */  sll        $t7, $t7, 2
/* 73A6C 80072E6C 01EE7823 */  subu       $t7, $t7, $t6
/* 73A70 80072E70 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 73A74 80072E74 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 73A78 80072E78 000F78C0 */  sll        $t7, $t7, 3
/* 73A7C 80072E7C 01F81021 */  addu       $v0, $t7, $t8
/* 73A80 80072E80 24190100 */  addiu      $t9, $zero, 0x100
/* 73A84 80072E84 3C080001 */  lui        $t0, 1
/* 73A88 80072E88 A45900D0 */  sh         $t9, 0xd0($v0)
/* 73A8C 80072E8C AC4000EC */  sw         $zero, 0xec($v0)
/* 73A90 80072E90 AC4800F0 */  sw         $t0, 0xf0($v0)
/* 73A94 80072E94 3C09800E */  lui        $t1, %hi(D_800E3574)
/* 73A98 80072E98 95293574 */  lhu        $t1, %lo(D_800E3574)($t1)
/* 73A9C 80072E9C 3C010002 */  lui        $at, 2
/* 73AA0 80072EA0 34211003 */  ori        $at, $at, 0x1003
/* 73AA4 80072EA4 01215021 */  addu       $t2, $t1, $at
/* 73AA8 80072EA8 3C010001 */  lui        $at, 1
/* 73AAC 80072EAC 01415825 */  or         $t3, $t2, $at
/* 73AB0 80072EB0 3C01FFFD */  lui        $at, 0xfffd
/* 73AB4 80072EB4 3421FFFF */  ori        $at, $at, 0xffff
/* 73AB8 80072EB8 8C4D0098 */  lw         $t5, 0x98($v0)
/* 73ABC 80072EBC 01616024 */  and        $t4, $t3, $at
/* 73AC0 80072EC0 44802000 */  mtc1       $zero, $f4
/* 73AC4 80072EC4 2401FFBF */  addiu      $at, $zero, -0x41
/* 73AC8 80072EC8 01A17024 */  and        $t6, $t5, $at
/* 73ACC 80072ECC AFA40000 */  sw         $a0, ($sp)
/* 73AD0 80072ED0 AC4E0098 */  sw         $t6, 0x98($v0)
/* 73AD4 80072ED4 AC4C0080 */  sw         $t4, 0x80($v0)
/* 73AD8 80072ED8 03E00008 */  jr         $ra
/* 73ADC 80072EDC E4440144 */   swc1      $f4, 0x144($v0)
