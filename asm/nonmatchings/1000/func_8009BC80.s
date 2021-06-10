glabel func_8009BC80
/* 9C880 8009BC80 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9C884 8009BC84 30AE000F */  andi       $t6, $a1, 0xf
/* 9C888 8009BC88 240F0010 */  addiu      $t7, $zero, 0x10
/* 9C88C 8009BC8C 01EEC023 */  subu       $t8, $t7, $t6
/* 9C890 8009BC90 AFB80004 */  sw         $t8, 4($sp)
/* 9C894 8009BC94 8FB90004 */  lw         $t9, 4($sp)
/* 9C898 8009BC98 24010010 */  addiu      $at, $zero, 0x10
/* 9C89C 8009BC9C 13210005 */  beq        $t9, $at, .L8009BCB4
/* 9C8A0 8009BCA0 00000000 */   nop
/* 9C8A4 8009BCA4 8FA80004 */  lw         $t0, 4($sp)
/* 9C8A8 8009BCA8 00A84821 */  addu       $t1, $a1, $t0
/* 9C8AC 8009BCAC 10000002 */  b          .L8009BCB8
/* 9C8B0 8009BCB0 AC890000 */   sw        $t1, ($a0)
.L8009BCB4:
/* 9C8B4 8009BCB4 AC850000 */  sw         $a1, ($a0)
.L8009BCB8:
/* 9C8B8 8009BCB8 AC860008 */  sw         $a2, 8($a0)
/* 9C8BC 8009BCBC 8C8A0000 */  lw         $t2, ($a0)
/* 9C8C0 8009BCC0 AC8A0004 */  sw         $t2, 4($a0)
/* 9C8C4 8009BCC4 AC80000C */  sw         $zero, 0xc($a0)
/* 9C8C8 8009BCC8 10000001 */  b          .L8009BCD0
/* 9C8CC 8009BCCC 00000000 */   nop
.L8009BCD0:
/* 9C8D0 8009BCD0 03E00008 */  jr         $ra
/* 9C8D4 8009BCD4 27BD0008 */   addiu     $sp, $sp, 8
/* 9C8D8 8009BCD8 00000000 */  nop
/* 9C8DC 8009BCDC 00000000 */  nop
