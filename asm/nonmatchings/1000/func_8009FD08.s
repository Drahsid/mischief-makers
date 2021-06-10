glabel func_8009FD08
/* A0908 8009FD08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A090C 8009FD0C AFBF0014 */  sw         $ra, 0x14($sp)
/* A0910 8009FD10 AFA40020 */  sw         $a0, 0x20($sp)
/* A0914 8009FD14 AFA50024 */  sw         $a1, 0x24($sp)
/* A0918 8009FD18 8FA40020 */  lw         $a0, 0x20($sp)
/* A091C 8009FD1C 0C027EC5 */  jal        func_8009FB14
/* A0920 8009FD20 8FA50024 */   lw        $a1, 0x24($sp)
/* A0924 8009FD24 AFA2001C */  sw         $v0, 0x1c($sp)
/* A0928 8009FD28 8FAE001C */  lw         $t6, 0x1c($sp)
/* A092C 8009FD2C 31CF0080 */  andi       $t7, $t6, 0x80
/* A0930 8009FD30 11E00012 */  beqz       $t7, .L8009FD7C
/* A0934 8009FD34 00000000 */   nop
/* A0938 8009FD38 8FB8001C */  lw         $t8, 0x1c($sp)
/* A093C 8009FD3C 3319007F */  andi       $t9, $t8, 0x7f
/* A0940 8009FD40 AFB9001C */  sw         $t9, 0x1c($sp)
.L8009FD44:
/* A0944 8009FD44 8FA40020 */  lw         $a0, 0x20($sp)
/* A0948 8009FD48 0C027EC5 */  jal        func_8009FB14
/* A094C 8009FD4C 8FA50024 */   lw        $a1, 0x24($sp)
/* A0950 8009FD50 AFA20018 */  sw         $v0, 0x18($sp)
/* A0954 8009FD54 8FA8001C */  lw         $t0, 0x1c($sp)
/* A0958 8009FD58 8FAA0018 */  lw         $t2, 0x18($sp)
/* A095C 8009FD5C 000849C0 */  sll        $t1, $t0, 7
/* A0960 8009FD60 314B007F */  andi       $t3, $t2, 0x7f
/* A0964 8009FD64 012B6021 */  addu       $t4, $t1, $t3
/* A0968 8009FD68 AFAC001C */  sw         $t4, 0x1c($sp)
/* A096C 8009FD6C 8FAD0018 */  lw         $t5, 0x18($sp)
/* A0970 8009FD70 31AE0080 */  andi       $t6, $t5, 0x80
/* A0974 8009FD74 15C0FFF3 */  bnez       $t6, .L8009FD44
/* A0978 8009FD78 00000000 */   nop
.L8009FD7C:
/* A097C 8009FD7C 10000003 */  b          .L8009FD8C
/* A0980 8009FD80 8FA2001C */   lw        $v0, 0x1c($sp)
/* A0984 8009FD84 10000001 */  b          .L8009FD8C
/* A0988 8009FD88 00000000 */   nop
.L8009FD8C:
/* A098C 8009FD8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0990 8009FD90 27BD0020 */  addiu      $sp, $sp, 0x20
/* A0994 8009FD94 03E00008 */  jr         $ra
/* A0998 8009FD98 00000000 */   nop
/* A099C 8009FD9C 00000000 */  nop
