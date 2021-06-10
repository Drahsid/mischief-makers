glabel func_8009BCE0
/* 9C8E0 8009BCE0 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9C8E4 8009BCE4 AFA50004 */  sw         $a1, 4($sp)
/* 9C8E8 8009BCE8 AFA00000 */  sw         $zero, ($sp)
/* 9C8EC 8009BCEC 848E0002 */  lh         $t6, 2($a0)
/* 9C8F0 8009BCF0 19C00010 */  blez       $t6, .L8009BD34
/* 9C8F4 8009BCF4 00000000 */   nop
.L8009BCF8:
/* 9C8F8 8009BCF8 8FAF0000 */  lw         $t7, ($sp)
/* 9C8FC 8009BCFC 8FA90004 */  lw         $t1, 4($sp)
/* 9C900 8009BD00 000FC0C0 */  sll        $t8, $t7, 3
/* 9C904 8009BD04 0098C821 */  addu       $t9, $a0, $t8
/* 9C908 8009BD08 8F280004 */  lw         $t0, 4($t9)
/* 9C90C 8009BD0C 00985821 */  addu       $t3, $a0, $t8
/* 9C910 8009BD10 01095021 */  addu       $t2, $t0, $t1
/* 9C914 8009BD14 AD6A0004 */  sw         $t2, 4($t3)
/* 9C918 8009BD18 8FAC0000 */  lw         $t4, ($sp)
/* 9C91C 8009BD1C 258D0001 */  addiu      $t5, $t4, 1
/* 9C920 8009BD20 AFAD0000 */  sw         $t5, ($sp)
/* 9C924 8009BD24 848E0002 */  lh         $t6, 2($a0)
/* 9C928 8009BD28 01AE082A */  slt        $at, $t5, $t6
/* 9C92C 8009BD2C 1420FFF2 */  bnez       $at, .L8009BCF8
/* 9C930 8009BD30 00000000 */   nop
.L8009BD34:
/* 9C934 8009BD34 10000001 */  b          .L8009BD3C
/* 9C938 8009BD38 00000000 */   nop
.L8009BD3C:
/* 9C93C 8009BD3C 03E00008 */  jr         $ra
/* 9C940 8009BD40 27BD0008 */   addiu     $sp, $sp, 8
