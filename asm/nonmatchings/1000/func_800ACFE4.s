glabel func_800ACFE4
/* ADBE4 800ACFE4 27BDFFF8 */  addiu      $sp, $sp, -8
/* ADBE8 800ACFE8 8C8E0024 */  lw         $t6, 0x24($a0)
/* ADBEC 800ACFEC 01C57823 */  subu       $t7, $t6, $a1
/* ADBF0 800ACFF0 AFAF0004 */  sw         $t7, 4($sp)
/* ADBF4 800ACFF4 8FB80004 */  lw         $t8, 4($sp)
/* ADBF8 800ACFF8 07000005 */  bltz       $t8, .L800AD010
/* ADBFC 800ACFFC 00000000 */   nop
/* ADC00 800AD000 10000007 */  b          .L800AD020
/* ADC04 800AD004 8FA20004 */   lw        $v0, 4($sp)
/* ADC08 800AD008 10000003 */  b          .L800AD018
/* ADC0C 800AD00C 00000000 */   nop
.L800AD010:
/* ADC10 800AD010 10000003 */  b          .L800AD020
/* ADC14 800AD014 240203E8 */   addiu     $v0, $zero, 0x3e8
.L800AD018:
/* ADC18 800AD018 10000001 */  b          .L800AD020
/* ADC1C 800AD01C 00000000 */   nop
.L800AD020:
/* ADC20 800AD020 03E00008 */  jr         $ra
/* ADC24 800AD024 27BD0008 */   addiu     $sp, $sp, 8
