glabel func_8009EC00
/* 9F800 8009EC00 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9F804 8009EC04 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* 9F808 8009EC08 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
/* 9F80C 8009EC0C AFAE0004 */  sw         $t6, 4($sp)
/* 9F810 8009EC10 8FAF0004 */  lw         $t7, 4($sp)
/* 9F814 8009EC14 8DF8002C */  lw         $t8, 0x2c($t7)
/* 9F818 8009EC18 AC980000 */  sw         $t8, ($a0)
/* 9F81C 8009EC1C 8FB90004 */  lw         $t9, 4($sp)
/* 9F820 8009EC20 AF24002C */  sw         $a0, 0x2c($t9)
/* 9F824 8009EC24 10000001 */  b          .L8009EC2C
/* 9F828 8009EC28 00000000 */   nop
.L8009EC2C:
/* 9F82C 8009EC2C 03E00008 */  jr         $ra
/* 9F830 8009EC30 27BD0008 */   addiu     $sp, $sp, 8
