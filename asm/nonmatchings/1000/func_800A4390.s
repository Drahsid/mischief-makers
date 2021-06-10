glabel func_800A4390
/* A4F90 800A4390 AFA40000 */  sw         $a0, ($sp)
/* A4F94 800A4394 AFA50004 */  sw         $a1, 4($sp)
/* A4F98 800A4398 AFA60008 */  sw         $a2, 8($sp)
/* A4F9C 800A439C AFA7000C */  sw         $a3, 0xc($sp)
/* A4FA0 800A43A0 DFAE0000 */  ld         $t6, ($sp)
/* A4FA4 800A43A4 DFAF0008 */  ld         $t7, 8($sp)
/* A4FA8 800A43A8 01CF001F */  ddivu      $zero, $t6, $t7
/* A4FAC 800A43AC 15E00002 */  bnez       $t7, .L800A43B8
/* A4FB0 800A43B0 00000000 */   nop
/* A4FB4 800A43B4 0007000D */  break      7
.L800A43B8:
/* A4FB8 800A43B8 00001010 */   mfhi      $v0
/* A4FBC 800A43BC 0002183C */  dsll32     $v1, $v0, 0
/* A4FC0 800A43C0 0003183F */  dsra32     $v1, $v1, 0
/* A4FC4 800A43C4 10000003 */  b          .L800A43D4
/* A4FC8 800A43C8 0002103F */   dsra32    $v0, $v0, 0
/* A4FCC 800A43CC 10000001 */  b          .L800A43D4
/* A4FD0 800A43D0 00000000 */   nop
.L800A43D4:
/* A4FD4 800A43D4 03E00008 */  jr         $ra
/* A4FD8 800A43D8 00000000 */   nop
