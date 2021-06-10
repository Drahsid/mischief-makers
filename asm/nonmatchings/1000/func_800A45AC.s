glabel func_800A45AC
/* A51AC 800A45AC AFA40000 */  sw         $a0, ($sp)
/* A51B0 800A45B0 AFA50004 */  sw         $a1, 4($sp)
/* A51B4 800A45B4 AFA60008 */  sw         $a2, 8($sp)
/* A51B8 800A45B8 AFA7000C */  sw         $a3, 0xc($sp)
/* A51BC 800A45BC DFAE0000 */  ld         $t6, ($sp)
/* A51C0 800A45C0 DFAF0008 */  ld         $t7, 8($sp)
/* A51C4 800A45C4 01EE1017 */  dsrav      $v0, $t6, $t7
/* A51C8 800A45C8 0002183C */  dsll32     $v1, $v0, 0
/* A51CC 800A45CC 0003183F */  dsra32     $v1, $v1, 0
/* A51D0 800A45D0 10000003 */  b          .L800A45E0
/* A51D4 800A45D4 0002103F */   dsra32    $v0, $v0, 0
/* A51D8 800A45D8 10000001 */  b          .L800A45E0
/* A51DC 800A45DC 00000000 */   nop
.L800A45E0:
/* A51E0 800A45E0 03E00008 */  jr         $ra
/* A51E4 800A45E4 00000000 */   nop
/* A51E8 800A45E8 00000000 */  nop
/* A51EC 800A45EC 00000000 */  nop
