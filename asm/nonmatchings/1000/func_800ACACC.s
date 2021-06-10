glabel func_800ACACC
/* AD6CC 800ACACC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AD6D0 800ACAD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* AD6D4 800ACAD4 AFA40030 */  sw         $a0, 0x30($sp)
/* AD6D8 800ACAD8 AFA50034 */  sw         $a1, 0x34($sp)
/* AD6DC 800ACADC 8FAE0034 */  lw         $t6, 0x34($sp)
/* AD6E0 800ACAE0 25CF0004 */  addiu      $t7, $t6, 4
/* AD6E4 800ACAE4 AFAF002C */  sw         $t7, 0x2c($sp)
/* AD6E8 800ACAE8 8FB80034 */  lw         $t8, 0x34($sp)
/* AD6EC 800ACAEC 240100FF */  addiu      $at, $zero, 0xff
/* AD6F0 800ACAF0 93190008 */  lbu        $t9, 8($t8)
/* AD6F4 800ACAF4 17210017 */  bne        $t9, $at, .L800ACB54
/* AD6F8 800ACAF8 00000000 */   nop
/* AD6FC 800ACAFC 8FA80034 */  lw         $t0, 0x34($sp)
/* AD700 800ACB00 24010051 */  addiu      $at, $zero, 0x51
/* AD704 800ACB04 91090009 */  lbu        $t1, 9($t0)
/* AD708 800ACB08 15210012 */  bne        $t1, $at, .L800ACB54
/* AD70C 800ACB0C 00000000 */   nop
/* AD710 800ACB10 8FAA002C */  lw         $t2, 0x2c($sp)
/* AD714 800ACB14 914B0007 */  lbu        $t3, 7($t2)
/* AD718 800ACB18 914D0008 */  lbu        $t5, 8($t2)
/* AD71C 800ACB1C 91580009 */  lbu        $t8, 9($t2)
/* AD720 800ACB20 000B6400 */  sll        $t4, $t3, 0x10
/* AD724 800ACB24 000D7200 */  sll        $t6, $t5, 8
/* AD728 800ACB28 018E7825 */  or         $t7, $t4, $t6
/* AD72C 800ACB2C 01F8C825 */  or         $t9, $t7, $t8
/* AD730 800ACB30 AFB90018 */  sw         $t9, 0x18($sp)
/* AD734 800ACB34 8FA80018 */  lw         $t0, 0x18($sp)
/* AD738 800ACB38 8FA40030 */  lw         $a0, 0x30($sp)
/* AD73C 800ACB3C 44882000 */  mtc1       $t0, $f4
/* AD740 800ACB40 00000000 */  nop
/* AD744 800ACB44 46802120 */  cvt.s.w    $f4, $f4
/* AD748 800ACB48 44052000 */  mfc1       $a1, $f4
/* AD74C 800ACB4C 0C02B5BD */  jal        func_800AD6F4
/* AD750 800ACB50 00000000 */   nop
.L800ACB54:
/* AD754 800ACB54 10000001 */  b          .L800ACB5C
/* AD758 800ACB58 00000000 */   nop
.L800ACB5C:
/* AD75C 800ACB5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AD760 800ACB60 27BD0030 */  addiu      $sp, $sp, 0x30
/* AD764 800ACB64 03E00008 */  jr         $ra
/* AD768 800ACB68 00000000 */   nop
