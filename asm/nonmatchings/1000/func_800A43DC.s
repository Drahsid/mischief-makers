glabel func_800A43DC
/* A4FDC 800A43DC AFA40000 */  sw         $a0, ($sp)
/* A4FE0 800A43E0 AFA50004 */  sw         $a1, 4($sp)
/* A4FE4 800A43E4 AFA60008 */  sw         $a2, 8($sp)
/* A4FE8 800A43E8 AFA7000C */  sw         $a3, 0xc($sp)
/* A4FEC 800A43EC DFAE0000 */  ld         $t6, ($sp)
/* A4FF0 800A43F0 DFAF0008 */  ld         $t7, 8($sp)
/* A4FF4 800A43F4 01CF001E */  ddiv       $zero, $t6, $t7
/* A4FF8 800A43F8 00000000 */  nop
/* A4FFC 800A43FC 15E00002 */  bnez       $t7, .L800A4408
/* A5000 800A4400 00000000 */   nop
/* A5004 800A4404 0007000D */  break      7
.L800A4408:
/* A5008 800A4408 6401FFFF */   daddiu    $at, $zero, -1
/* A500C 800A440C 15E10005 */  bne        $t7, $at, .L800A4424
/* A5010 800A4410 64010001 */   daddiu    $at, $zero, 1
/* A5014 800A4414 00010FFC */  dsll32     $at, $at, 0x1f
/* A5018 800A4418 15C10002 */  bne        $t6, $at, .L800A4424
/* A501C 800A441C 00000000 */   nop
/* A5020 800A4420 0006000D */  break      6
.L800A4424:
/* A5024 800A4424 00001012 */   mflo      $v0
/* A5028 800A4428 0002183C */  dsll32     $v1, $v0, 0
/* A502C 800A442C 0003183F */  dsra32     $v1, $v1, 0
/* A5030 800A4430 10000003 */  b          .L800A4440
/* A5034 800A4434 0002103F */   dsra32    $v0, $v0, 0
/* A5038 800A4438 10000001 */  b          .L800A4440
/* A503C 800A443C 00000000 */   nop
.L800A4440:
/* A5040 800A4440 03E00008 */  jr         $ra
/* A5044 800A4444 00000000 */   nop
