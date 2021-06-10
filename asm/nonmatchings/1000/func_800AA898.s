glabel func_800AA898
/* AB498 800AA898 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AB49C 800AA89C AFBF0014 */  sw         $ra, 0x14($sp)
/* AB4A0 800AA8A0 3C0E800F */  lui        $t6, %hi(D_800EA650)
/* AB4A4 800AA8A4 8DCEA650 */  lw         $t6, %lo(D_800EA650)($t6)
/* AB4A8 800AA8A8 15C00003 */  bnez       $t6, .L800AA8B8
/* AB4AC 800AA8AC 00000000 */   nop
/* AB4B0 800AA8B0 0C02AA10 */  jal        func_800AA840
/* AB4B4 800AA8B4 00000000 */   nop
.L800AA8B8:
/* AB4B8 800AA8B8 3C048019 */  lui        $a0, %hi(D_8018A4A8)
/* AB4BC 800AA8BC 2484A4A8 */  addiu      $a0, $a0, %lo(D_8018A4A8)
/* AB4C0 800AA8C0 27A5001C */  addiu      $a1, $sp, 0x1c
/* AB4C4 800AA8C4 0C026B44 */  jal        func_8009AD10
/* AB4C8 800AA8C8 24060001 */   addiu     $a2, $zero, 1
/* AB4CC 800AA8CC 10000001 */  b          .L800AA8D4
/* AB4D0 800AA8D0 00000000 */   nop
.L800AA8D4:
/* AB4D4 800AA8D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB4D8 800AA8D8 27BD0020 */  addiu      $sp, $sp, 0x20
/* AB4DC 800AA8DC 03E00008 */  jr         $ra
/* AB4E0 800AA8E0 00000000 */   nop
