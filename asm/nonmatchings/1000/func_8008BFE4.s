glabel func_8008BFE4
/* 8CBE4 8008BFE4 3C028018 */  lui        $v0, %hi(D_801826A0)
/* 8CBE8 8008BFE8 AFA40000 */  sw         $a0, ($sp)
/* 8CBEC 8008BFEC 244226A0 */  addiu      $v0, $v0, %lo(D_801826A0)
/* 8CBF0 8008BFF0 00001825 */  or         $v1, $zero, $zero
.L8008BFF4:
/* 8CBF4 8008BFF4 00037080 */  sll        $t6, $v1, 2
/* 8CBF8 8008BFF8 004E2021 */  addu       $a0, $v0, $t6
/* 8CBFC 8008BFFC 8C8F0000 */  lw         $t7, ($a0)
/* 8CC00 8008C000 00000000 */  nop
/* 8CC04 8008C004 15E00004 */  bnez       $t7, .L8008C018
/* 8CC08 8008C008 24180001 */   addiu     $t8, $zero, 1
/* 8CC0C 8008C00C AC980000 */  sw         $t8, ($a0)
/* 8CC10 8008C010 03E00008 */  jr         $ra
/* 8CC14 8008C014 00601025 */   or        $v0, $v1, $zero
.L8008C018:
/* 8CC18 8008C018 24630001 */  addiu      $v1, $v1, 1
/* 8CC1C 8008C01C 3079FFFF */  andi       $t9, $v1, 0xffff
/* 8CC20 8008C020 2B210004 */  slti       $at, $t9, 4
/* 8CC24 8008C024 1420FFF3 */  bnez       $at, .L8008BFF4
/* 8CC28 8008C028 03201825 */   or        $v1, $t9, $zero
/* 8CC2C 8008C02C 240200FF */  addiu      $v0, $zero, 0xff
/* 8CC30 8008C030 03E00008 */  jr         $ra
/* 8CC34 8008C034 00000000 */   nop
