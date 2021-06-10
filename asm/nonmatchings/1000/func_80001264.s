glabel func_80001264
/* 1E64 80001264 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E68 80001268 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E6C 8000126C 3C048013 */  lui        $a0, %hi(D_8012ABA8)
/* 1E70 80001270 2484ABA8 */  addiu      $a0, $a0, %lo(D_8012ABA8)
/* 1E74 80001274 27A5001C */  addiu      $a1, $sp, 0x1c
/* 1E78 80001278 0C026B44 */  jal        func_8009AD10
/* 1E7C 8000127C 24060001 */   addiu     $a2, $zero, 1
/* 1E80 80001280 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E84 80001284 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1E88 80001288 03E00008 */  jr         $ra
/* 1E8C 8000128C 00000000 */   nop
