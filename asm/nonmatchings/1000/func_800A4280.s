glabel func_800A4280
/* A4E80 800A4280 AFA40000 */  sw         $a0, ($sp)
/* A4E84 800A4284 AFA50004 */  sw         $a1, 4($sp)
/* A4E88 800A4288 AFA60008 */  sw         $a2, 8($sp)
/* A4E8C 800A428C AFA7000C */  sw         $a3, 0xc($sp)
/* A4E90 800A4290 DFAE0000 */  ld         $t6, ($sp)
/* A4E94 800A4294 DFAF0008 */  ld         $t7, 8($sp)
/* A4E98 800A4298 01EE1016 */  dsrlv      $v0, $t6, $t7
/* A4E9C 800A429C 0002183C */  dsll32     $v1, $v0, 0
/* A4EA0 800A42A0 0003183F */  dsra32     $v1, $v1, 0
/* A4EA4 800A42A4 10000003 */  b          .L800A42B4
/* A4EA8 800A42A8 0002103F */   dsra32    $v0, $v0, 0
/* A4EAC 800A42AC 10000001 */  b          .L800A42B4
/* A4EB0 800A42B0 00000000 */   nop
.L800A42B4:
/* A4EB4 800A42B4 03E00008 */  jr         $ra
/* A4EB8 800A42B8 00000000 */   nop
