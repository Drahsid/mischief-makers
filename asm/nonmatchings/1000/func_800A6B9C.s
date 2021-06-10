glabel func_800A6B9C
/* A779C 800A6B9C 0080C825 */  or         $t9, $a0, $zero
/* A77A0 800A6BA0 8C980000 */  lw         $t8, ($a0)
/* A77A4 800A6BA4 8CAF0004 */  lw         $t7, 4($a1)
/* A77A8 800A6BA8 8F0E0004 */  lw         $t6, 4($t8)
/* A77AC 800A6BAC 01CF082A */  slt        $at, $t6, $t7
/* A77B0 800A6BB0 14200007 */  bnez       $at, .L800A6BD0
/* A77B4 800A6BB4 00000000 */   nop
.L800A6BB8:
/* A77B8 800A6BB8 0300C825 */  or         $t9, $t8, $zero
/* A77BC 800A6BBC 8F180000 */  lw         $t8, ($t8)
/* A77C0 800A6BC0 8F0E0004 */  lw         $t6, 4($t8)
/* A77C4 800A6BC4 01CF082A */  slt        $at, $t6, $t7
/* A77C8 800A6BC8 1020FFFB */  beqz       $at, .L800A6BB8
/* A77CC 800A6BCC 00000000 */   nop
.L800A6BD0:
/* A77D0 800A6BD0 8F380000 */  lw         $t8, ($t9)
/* A77D4 800A6BD4 ACB80000 */  sw         $t8, ($a1)
/* A77D8 800A6BD8 AF250000 */  sw         $a1, ($t9)
/* A77DC 800A6BDC ACA40008 */  sw         $a0, 8($a1)
/* A77E0 800A6BE0 03E00008 */  jr         $ra
/* A77E4 800A6BE4 00000000 */   nop
