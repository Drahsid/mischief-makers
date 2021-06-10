glabel func_8009BAB8
/* 9C6B8 8009BAB8 8CAE0000 */  lw         $t6, ($a1)
/* 9C6BC 8009BABC AC8E0000 */  sw         $t6, ($a0)
/* 9C6C0 8009BAC0 AC850004 */  sw         $a1, 4($a0)
/* 9C6C4 8009BAC4 8CAF0000 */  lw         $t7, ($a1)
/* 9C6C8 8009BAC8 11E00003 */  beqz       $t7, .L8009BAD8
/* 9C6CC 8009BACC 00000000 */   nop
/* 9C6D0 8009BAD0 8CB80000 */  lw         $t8, ($a1)
/* 9C6D4 8009BAD4 AF040004 */  sw         $a0, 4($t8)
.L8009BAD8:
/* 9C6D8 8009BAD8 ACA40000 */  sw         $a0, ($a1)
/* 9C6DC 8009BADC 03E00008 */  jr         $ra
/* 9C6E0 8009BAE0 00000000 */   nop
