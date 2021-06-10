glabel func_800A42BC
/* A4EBC 800A42BC AFA40000 */  sw         $a0, ($sp)
/* A4EC0 800A42C0 AFA50004 */  sw         $a1, 4($sp)
/* A4EC4 800A42C4 AFA60008 */  sw         $a2, 8($sp)
/* A4EC8 800A42C8 AFA7000C */  sw         $a3, 0xc($sp)
/* A4ECC 800A42CC DFAE0000 */  ld         $t6, ($sp)
/* A4ED0 800A42D0 DFAF0008 */  ld         $t7, 8($sp)
/* A4ED4 800A42D4 01CF001F */  ddivu      $zero, $t6, $t7
/* A4ED8 800A42D8 15E00002 */  bnez       $t7, .L800A42E4
/* A4EDC 800A42DC 00000000 */   nop
/* A4EE0 800A42E0 0007000D */  break      7
.L800A42E4:
/* A4EE4 800A42E4 00001010 */   mfhi      $v0
/* A4EE8 800A42E8 0002183C */  dsll32     $v1, $v0, 0
/* A4EEC 800A42EC 0003183F */  dsra32     $v1, $v1, 0
/* A4EF0 800A42F0 10000003 */  b          .L800A4300
/* A4EF4 800A42F4 0002103F */   dsra32    $v0, $v0, 0
/* A4EF8 800A42F8 10000001 */  b          .L800A4300
/* A4EFC 800A42FC 00000000 */   nop
.L800A4300:
/* A4F00 800A4300 03E00008 */  jr         $ra
/* A4F04 800A4304 00000000 */   nop
