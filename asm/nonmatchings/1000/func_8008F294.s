glabel func_8008F294
/* 8FE94 8008F294 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8FE98 8008F298 000E7880 */  sll        $t7, $t6, 2
/* 8FE9C 8008F29C 01EE7823 */  subu       $t7, $t7, $t6
/* 8FEA0 8008F2A0 000F7880 */  sll        $t7, $t7, 2
/* 8FEA4 8008F2A4 01EE7821 */  addu       $t7, $t7, $t6
/* 8FEA8 8008F2A8 000F7880 */  sll        $t7, $t7, 2
/* 8FEAC 8008F2AC 01EE7823 */  subu       $t7, $t7, $t6
/* 8FEB0 8008F2B0 3C18800F */  lui        $t8, %hi(gActors)
/* 8FEB4 8008F2B4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8FEB8 8008F2B8 000F78C0 */  sll        $t7, $t7, 3
/* 8FEBC 8008F2BC 01F81021 */  addu       $v0, $t7, $t8
/* 8FEC0 8008F2C0 C444011C */  lwc1       $f4, 0x11c($v0)
/* 8FEC4 8008F2C4 44803000 */  mtc1       $zero, $f6
/* 8FEC8 8008F2C8 AFA40000 */  sw         $a0, ($sp)
/* 8FECC 8008F2CC 4606203C */  c.lt.s     $f4, $f6
/* 8FED0 8008F2D0 24190110 */  addiu      $t9, $zero, 0x110
/* 8FED4 8008F2D4 45000002 */  bc1f       .L8008F2E0
/* 8FED8 8008F2D8 00000000 */   nop
/* 8FEDC 8008F2DC A45900D0 */  sh         $t9, 0xd0($v0)
.L8008F2E0:
/* 8FEE0 8008F2E0 03E00008 */  jr         $ra
/* 8FEE4 8008F2E4 00000000 */   nop
