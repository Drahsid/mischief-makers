glabel func_800409E0
/* 415E0 800409E0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 415E4 800409E4 000E7880 */  sll        $t7, $t6, 2
/* 415E8 800409E8 01EE7823 */  subu       $t7, $t7, $t6
/* 415EC 800409EC 000F7880 */  sll        $t7, $t7, 2
/* 415F0 800409F0 01EE7821 */  addu       $t7, $t7, $t6
/* 415F4 800409F4 000F7880 */  sll        $t7, $t7, 2
/* 415F8 800409F8 01EE7823 */  subu       $t7, $t7, $t6
/* 415FC 800409FC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 41600 80040A00 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 41604 80040A04 000F78C0 */  sll        $t7, $t7, 3
/* 41608 80040A08 01F81021 */  addu       $v0, $t7, $t8
/* 4160C 80040A0C 845900E0 */  lh         $t9, 0xe0($v0)
/* 41610 80040A10 AFA40000 */  sw         $a0, ($sp)
/* 41614 80040A14 1B20000F */  blez       $t9, .L80040A54
/* 41618 80040A18 00000000 */   nop
/* 4161C 80040A1C 944800D4 */  lhu        $t0, 0xd4($v0)
/* 41620 80040A20 00000000 */  nop
/* 41624 80040A24 1D00000B */  bgtz       $t0, .L80040A54
/* 41628 80040A28 00000000 */   nop
/* 4162C 80040A2C 8C490080 */  lw         $t1, 0x80($v0)
/* 41630 80040A30 24010003 */  addiu      $at, $zero, 3
/* 41634 80040A34 312A0003 */  andi       $t2, $t1, 3
/* 41638 80040A38 15410006 */  bne        $t2, $at, .L80040A54
/* 4163C 80040A3C 00000000 */   nop
/* 41640 80040A40 944B00D0 */  lhu        $t3, 0xd0($v0)
/* 41644 80040A44 00001025 */  or         $v0, $zero, $zero
/* 41648 80040A48 29610051 */  slti       $at, $t3, 0x51
/* 4164C 80040A4C 10200003 */  beqz       $at, .L80040A5C
/* 41650 80040A50 00000000 */   nop
.L80040A54:
/* 41654 80040A54 03E00008 */  jr         $ra
/* 41658 80040A58 24020001 */   addiu     $v0, $zero, 1
.L80040A5C:
/* 4165C 80040A5C 03E00008 */  jr         $ra
/* 41660 80040A60 00000000 */   nop
