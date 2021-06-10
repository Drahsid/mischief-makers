glabel func_800ADA0C
/* AE60C 800ADA0C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE610 800ADA10 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE614 800ADA14 AFA40028 */  sw         $a0, 0x28($sp)
/* AE618 800ADA18 0C02B9A8 */  jal        func_800AE6A0
/* AE61C 800ADA1C 24040001 */   addiu     $a0, $zero, 1
/* AE620 800ADA20 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE624 800ADA24 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE628 800ADA28 8DCF0008 */  lw         $t7, 8($t6)
/* AE62C 800ADA2C AFAF0024 */  sw         $t7, 0x24($sp)
/* AE630 800ADA30 8FB80024 */  lw         $t8, 0x24($sp)
/* AE634 800ADA34 1300000E */  beqz       $t8, .L800ADA70
/* AE638 800ADA38 00000000 */   nop
.L800ADA3C:
/* AE63C 800ADA3C 8FB90024 */  lw         $t9, 0x24($sp)
/* AE640 800ADA40 8F280000 */  lw         $t0, ($t9)
/* AE644 800ADA44 AFA80020 */  sw         $t0, 0x20($sp)
/* AE648 800ADA48 0C026EBB */  jal        func_8009BAEC
/* AE64C 800ADA4C 8FA40024 */   lw        $a0, 0x24($sp)
/* AE650 800ADA50 8FA40024 */  lw         $a0, 0x24($sp)
/* AE654 800ADA54 0C026EAE */  jal        func_8009BAB8
/* AE658 800ADA58 8FA50028 */   lw        $a1, 0x28($sp)
/* AE65C 800ADA5C 8FA90020 */  lw         $t1, 0x20($sp)
/* AE660 800ADA60 AFA90024 */  sw         $t1, 0x24($sp)
/* AE664 800ADA64 8FAA0024 */  lw         $t2, 0x24($sp)
/* AE668 800ADA68 1540FFF4 */  bnez       $t2, .L800ADA3C
/* AE66C 800ADA6C 00000000 */   nop
.L800ADA70:
/* AE670 800ADA70 0C02B9A8 */  jal        func_800AE6A0
/* AE674 800ADA74 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE678 800ADA78 10000001 */  b          .L800ADA80
/* AE67C 800ADA7C 00000000 */   nop
.L800ADA80:
/* AE680 800ADA80 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE684 800ADA84 27BD0028 */  addiu      $sp, $sp, 0x28
/* AE688 800ADA88 03E00008 */  jr         $ra
/* AE68C 800ADA8C 00000000 */   nop
