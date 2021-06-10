glabel func_800B9904
/* BA504 800B9904 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* BA508 800B9908 AFA5000C */  sw         $a1, 0xc($sp)
/* BA50C 800B990C 8FAE000C */  lw         $t6, 0xc($sp)
/* BA510 800B9910 95CF0000 */  lhu        $t7, ($t6)
/* BA514 800B9914 31F87FF0 */  andi       $t8, $t7, 0x7ff0
/* BA518 800B9918 0018C903 */  sra        $t9, $t8, 4
/* BA51C 800B991C A7B9000A */  sh         $t9, 0xa($sp)
/* BA520 800B9920 87A8000A */  lh         $t0, 0xa($sp)
/* BA524 800B9924 240107FF */  addiu      $at, $zero, 0x7ff
/* BA528 800B9928 15010019 */  bne        $t0, $at, .L800B9990
/* BA52C 800B992C 00000000 */   nop
/* BA530 800B9930 A4800000 */  sh         $zero, ($a0)
/* BA534 800B9934 8FA9000C */  lw         $t1, 0xc($sp)
/* BA538 800B9938 952A0000 */  lhu        $t2, ($t1)
/* BA53C 800B993C 314B000F */  andi       $t3, $t2, 0xf
/* BA540 800B9940 1560000A */  bnez       $t3, .L800B996C
/* BA544 800B9944 00000000 */   nop
/* BA548 800B9948 952C0002 */  lhu        $t4, 2($t1)
/* BA54C 800B994C 15800007 */  bnez       $t4, .L800B996C
/* BA550 800B9950 00000000 */   nop
/* BA554 800B9954 952D0004 */  lhu        $t5, 4($t1)
/* BA558 800B9958 15A00004 */  bnez       $t5, .L800B996C
/* BA55C 800B995C 00000000 */   nop
/* BA560 800B9960 952E0006 */  lhu        $t6, 6($t1)
/* BA564 800B9964 11C00003 */  beqz       $t6, .L800B9974
/* BA568 800B9968 00000000 */   nop
.L800B996C:
/* BA56C 800B996C 10000002 */  b          .L800B9978
/* BA570 800B9970 24060002 */   addiu     $a2, $zero, 2
.L800B9974:
/* BA574 800B9974 24060001 */  addiu      $a2, $zero, 1
.L800B9978:
/* BA578 800B9978 00061400 */  sll        $v0, $a2, 0x10
/* BA57C 800B997C 00027C03 */  sra        $t7, $v0, 0x10
/* BA580 800B9980 1000001F */  b          .L800B9A00
/* BA584 800B9984 01E01025 */   or        $v0, $t7, $zero
/* BA588 800B9988 1000001B */  b          .L800B99F8
/* BA58C 800B998C 00000000 */   nop
.L800B9990:
/* BA590 800B9990 87B8000A */  lh         $t8, 0xa($sp)
/* BA594 800B9994 1B00000E */  blez       $t8, .L800B99D0
/* BA598 800B9998 00000000 */   nop
/* BA59C 800B999C 8FB9000C */  lw         $t9, 0xc($sp)
/* BA5A0 800B99A0 2401800F */  addiu      $at, $zero, -0x7ff1
/* BA5A4 800B99A4 97280000 */  lhu        $t0, ($t9)
/* BA5A8 800B99A8 01015024 */  and        $t2, $t0, $at
/* BA5AC 800B99AC 354B3FF0 */  ori        $t3, $t2, 0x3ff0
/* BA5B0 800B99B0 A72B0000 */  sh         $t3, ($t9)
/* BA5B4 800B99B4 87AC000A */  lh         $t4, 0xa($sp)
/* BA5B8 800B99B8 258DFC02 */  addiu      $t5, $t4, -0x3fe
/* BA5BC 800B99BC A48D0000 */  sh         $t5, ($a0)
/* BA5C0 800B99C0 1000000F */  b          .L800B9A00
/* BA5C4 800B99C4 2402FFFF */   addiu     $v0, $zero, -1
/* BA5C8 800B99C8 1000000B */  b          .L800B99F8
/* BA5CC 800B99CC 00000000 */   nop
.L800B99D0:
/* BA5D0 800B99D0 87A9000A */  lh         $t1, 0xa($sp)
/* BA5D4 800B99D4 05210005 */  bgez       $t1, .L800B99EC
/* BA5D8 800B99D8 00000000 */   nop
/* BA5DC 800B99DC 10000008 */  b          .L800B9A00
/* BA5E0 800B99E0 24020002 */   addiu     $v0, $zero, 2
/* BA5E4 800B99E4 10000004 */  b          .L800B99F8
/* BA5E8 800B99E8 00000000 */   nop
.L800B99EC:
/* BA5EC 800B99EC A4800000 */  sh         $zero, ($a0)
/* BA5F0 800B99F0 10000003 */  b          .L800B9A00
/* BA5F4 800B99F4 00001025 */   or        $v0, $zero, $zero
.L800B99F8:
/* BA5F8 800B99F8 10000001 */  b          .L800B9A00
/* BA5FC 800B99FC 00000000 */   nop
.L800B9A00:
/* BA600 800B9A00 03E00008 */  jr         $ra
/* BA604 800B9A04 27BD0010 */   addiu     $sp, $sp, 0x10
