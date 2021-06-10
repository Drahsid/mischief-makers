glabel func_8009F878
/* A0478 8009F878 27BDFED8 */  addiu      $sp, $sp, -0x128
/* A047C 8009F87C AFBF0014 */  sw         $ra, 0x14($sp)
/* A0480 8009F880 AFA40128 */  sw         $a0, 0x128($sp)
/* A0484 8009F884 AFA5012C */  sw         $a1, 0x12c($sp)
/* A0488 8009F888 AFA60130 */  sw         $a2, 0x130($sp)
/* A048C 8009F88C 8FAE0128 */  lw         $t6, 0x128($sp)
/* A0490 8009F890 27A40020 */  addiu      $a0, $sp, 0x20
/* A0494 8009F894 0C027BA4 */  jal        func_8009EE90
/* A0498 8009F898 8DC50000 */   lw        $a1, ($t6)
.L8009F89C:
/* A049C 8009F89C 8FAF0024 */  lw         $t7, 0x24($sp)
/* A04A0 8009F8A0 8FB8012C */  lw         $t8, 0x12c($sp)
/* A04A4 8009F8A4 AF0F0000 */  sw         $t7, ($t8)
/* A04A8 8009F8A8 8FB9002C */  lw         $t9, 0x2c($sp)
/* A04AC 8009F8AC 8FA8012C */  lw         $t0, 0x12c($sp)
/* A04B0 8009F8B0 AD190004 */  sw         $t9, 4($t0)
/* A04B4 8009F8B4 8FA90030 */  lw         $t1, 0x30($sp)
/* A04B8 8009F8B8 8FAA012C */  lw         $t2, 0x12c($sp)
/* A04BC 8009F8BC AD490008 */  sw         $t1, 8($t2)
/* A04C0 8009F8C0 AFA0001C */  sw         $zero, 0x1c($sp)
.L8009F8C4:
/* A04C4 8009F8C4 8FAB001C */  lw         $t3, 0x1c($sp)
/* A04C8 8009F8C8 8FAE012C */  lw         $t6, 0x12c($sp)
/* A04CC 8009F8CC 000B6080 */  sll        $t4, $t3, 2
/* A04D0 8009F8D0 03AC6821 */  addu       $t5, $sp, $t4
/* A04D4 8009F8D4 8DAD0038 */  lw         $t5, 0x38($t5)
/* A04D8 8009F8D8 01CC7821 */  addu       $t7, $t6, $t4
/* A04DC 8009F8DC ADED000C */  sw         $t5, 0xc($t7)
/* A04E0 8009F8E0 8FB8001C */  lw         $t8, 0x1c($sp)
/* A04E4 8009F8E4 8FA9012C */  lw         $t1, 0x12c($sp)
/* A04E8 8009F8E8 0018C880 */  sll        $t9, $t8, 2
/* A04EC 8009F8EC 03B94021 */  addu       $t0, $sp, $t9
/* A04F0 8009F8F0 8D080078 */  lw         $t0, 0x78($t0)
/* A04F4 8009F8F4 01395021 */  addu       $t2, $t1, $t9
/* A04F8 8009F8F8 AD48004C */  sw         $t0, 0x4c($t2)
/* A04FC 8009F8FC 8FAB001C */  lw         $t3, 0x1c($sp)
/* A0500 8009F900 8FAC012C */  lw         $t4, 0x12c($sp)
/* A0504 8009F904 03AB7021 */  addu       $t6, $sp, $t3
/* A0508 8009F908 91CE00B8 */  lbu        $t6, 0xb8($t6)
/* A050C 8009F90C 018B6821 */  addu       $t5, $t4, $t3
/* A0510 8009F910 A1AE008C */  sb         $t6, 0x8c($t5)
/* A0514 8009F914 8FAF001C */  lw         $t7, 0x1c($sp)
/* A0518 8009F918 8FA9012C */  lw         $t1, 0x12c($sp)
/* A051C 8009F91C 03AFC021 */  addu       $t8, $sp, $t7
/* A0520 8009F920 931800C8 */  lbu        $t8, 0xc8($t8)
/* A0524 8009F924 012FC821 */  addu       $t9, $t1, $t7
/* A0528 8009F928 A338009C */  sb         $t8, 0x9c($t9)
/* A052C 8009F92C 8FA8001C */  lw         $t0, 0x1c($sp)
/* A0530 8009F930 8FAB012C */  lw         $t3, 0x12c($sp)
/* A0534 8009F934 00085080 */  sll        $t2, $t0, 2
/* A0538 8009F938 03AA6021 */  addu       $t4, $sp, $t2
/* A053C 8009F93C 8D8C00D8 */  lw         $t4, 0xd8($t4)
/* A0540 8009F940 016A7021 */  addu       $t6, $t3, $t2
/* A0544 8009F944 ADCC00AC */  sw         $t4, 0xac($t6)
/* A0548 8009F948 8FAD001C */  lw         $t5, 0x1c($sp)
/* A054C 8009F94C 25A90001 */  addiu      $t1, $t5, 1
/* A0550 8009F950 29210010 */  slti       $at, $t1, 0x10
/* A0554 8009F954 1420FFDB */  bnez       $at, .L8009F8C4
/* A0558 8009F958 AFA9001C */   sw        $t1, 0x1c($sp)
/* A055C 8009F95C 27A40020 */  addiu      $a0, $sp, 0x20
/* A0560 8009F960 0C027C07 */  jal        func_8009F01C
/* A0564 8009F964 27A50118 */   addiu     $a1, $sp, 0x118
/* A0568 8009F968 87AF0118 */  lh         $t7, 0x118($sp)
/* A056C 8009F96C 24010004 */  addiu      $at, $zero, 4
/* A0570 8009F970 15E10003 */  bne        $t7, $at, .L8009F980
/* A0574 8009F974 00000000 */   nop
/* A0578 8009F978 10000006 */  b          .L8009F994
/* A057C 8009F97C 00000000 */   nop
.L8009F980:
/* A0580 8009F980 8FB8002C */  lw         $t8, 0x2c($sp)
/* A0584 8009F984 8FB90130 */  lw         $t9, 0x130($sp)
/* A0588 8009F988 0319082B */  sltu       $at, $t8, $t9
/* A058C 8009F98C 1420FFC3 */  bnez       $at, .L8009F89C
/* A0590 8009F990 00000000 */   nop
.L8009F994:
/* A0594 8009F994 10000001 */  b          .L8009F99C
/* A0598 8009F998 00000000 */   nop
.L8009F99C:
/* A059C 8009F99C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A05A0 8009F9A0 27BD0128 */  addiu      $sp, $sp, 0x128
/* A05A4 8009F9A4 03E00008 */  jr         $ra
/* A05A8 8009F9A8 00000000 */   nop
