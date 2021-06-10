glabel func_8009C0B0
/* 9CCB0 8009C0B0 908E0009 */  lbu        $t6, 9($a0)
/* 9CCB4 8009C0B4 11C00003 */  beqz       $t6, .L8009C0C4
/* 9CCB8 8009C0B8 00000000 */   nop
/* 9CCBC 8009C0BC 03E00008 */  jr         $ra
/* 9CCC0 8009C0C0 00000000 */   nop
.L8009C0C4:
/* 9CCC4 8009C0C4 240F0001 */  addiu      $t7, $zero, 1
/* 9CCC8 8009C0C8 A08F0009 */  sb         $t7, 9($a0)
/* 9CCCC 8009C0CC 8C980000 */  lw         $t8, ($a0)
/* 9CCD0 8009C0D0 0306C821 */  addu       $t9, $t8, $a2
/* 9CCD4 8009C0D4 AC990000 */  sw         $t9, ($a0)
/* 9CCD8 8009C0D8 90880008 */  lbu        $t0, 8($a0)
/* 9CCDC 8009C0DC 1500000C */  bnez       $t0, .L8009C110
/* 9CCE0 8009C0E0 00000000 */   nop
/* 9CCE4 8009C0E4 8C890010 */  lw         $t1, 0x10($a0)
/* 9CCE8 8009C0E8 01255021 */  addu       $t2, $t1, $a1
/* 9CCEC 8009C0EC AC8A0010 */  sw         $t2, 0x10($a0)
/* 9CCF0 8009C0F0 8C8B000C */  lw         $t3, 0xc($a0)
/* 9CCF4 8009C0F4 11600004 */  beqz       $t3, .L8009C108
/* 9CCF8 8009C0F8 00000000 */   nop
/* 9CCFC 8009C0FC 8C8C000C */  lw         $t4, 0xc($a0)
/* 9CD00 8009C100 01856821 */  addu       $t5, $t4, $a1
/* 9CD04 8009C104 AC8D000C */  sw         $t5, 0xc($a0)
.L8009C108:
/* 9CD08 8009C108 1000000B */  b          .L8009C138
/* 9CD0C 8009C10C 00000000 */   nop
.L8009C110:
/* 9CD10 8009C110 908E0008 */  lbu        $t6, 8($a0)
/* 9CD14 8009C114 24010001 */  addiu      $at, $zero, 1
/* 9CD18 8009C118 15C10007 */  bne        $t6, $at, .L8009C138
/* 9CD1C 8009C11C 00000000 */   nop
/* 9CD20 8009C120 8C8F000C */  lw         $t7, 0xc($a0)
/* 9CD24 8009C124 11E00004 */  beqz       $t7, .L8009C138
/* 9CD28 8009C128 00000000 */   nop
/* 9CD2C 8009C12C 8C98000C */  lw         $t8, 0xc($a0)
/* 9CD30 8009C130 0305C821 */  addu       $t9, $t8, $a1
/* 9CD34 8009C134 AC99000C */  sw         $t9, 0xc($a0)
.L8009C138:
/* 9CD38 8009C138 03E00008 */  jr         $ra
/* 9CD3C 8009C13C 00000000 */   nop
