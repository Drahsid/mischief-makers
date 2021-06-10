glabel func_8009ED40
/* 9F940 8009ED40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9F944 8009ED44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F948 8009ED48 AFA40018 */  sw         $a0, 0x18($sp)
/* 9F94C 8009ED4C AFA5001C */  sw         $a1, 0x1c($sp)
/* 9F950 8009ED50 8FA40018 */  lw         $a0, 0x18($sp)
/* 9F954 8009ED54 0C027B36 */  jal        func_8009ECD8
/* 9F958 8009ED58 8FA5001C */   lw        $a1, 0x1c($sp)
/* 9F95C 8009ED5C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 9F960 8009ED60 00417024 */  and        $t6, $v0, $at
/* 9F964 8009ED64 10000003 */  b          .L8009ED74
/* 9F968 8009ED68 01C01025 */   or        $v0, $t6, $zero
/* 9F96C 8009ED6C 10000001 */  b          .L8009ED74
/* 9F970 8009ED70 00000000 */   nop
.L8009ED74:
/* 9F974 8009ED74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F978 8009ED78 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9F97C 8009ED7C 03E00008 */  jr         $ra
/* 9F980 8009ED80 00000000 */   nop
