glabel func_80024DD8
/* 259D8 80024DD8 3C028038 */  lui        $v0, 0x8038
/* 259DC 80024DDC 3C03800D */  lui        $v1, %hi(D_800CC228)
/* 259E0 80024DE0 34420400 */  ori        $v0, $v0, 0x400
/* 259E4 80024DE4 2463C228 */  addiu      $v1, $v1, %lo(D_800CC228)
/* 259E8 80024DE8 00002025 */  or         $a0, $zero, $zero
.L80024DEC:
/* 259EC 80024DEC 24840001 */  addiu      $a0, $a0, 1
/* 259F0 80024DF0 946E0000 */  lhu        $t6, ($v1)
/* 259F4 80024DF4 308FFFFF */  andi       $t7, $a0, 0xffff
/* 259F8 80024DF8 29E10100 */  slti       $at, $t7, 0x100
/* 259FC 80024DFC 01E02025 */  or         $a0, $t7, $zero
/* 25A00 80024E00 24420002 */  addiu      $v0, $v0, 2
/* 25A04 80024E04 24630002 */  addiu      $v1, $v1, 2
/* 25A08 80024E08 1420FFF8 */  bnez       $at, .L80024DEC
/* 25A0C 80024E0C A44EFFFE */   sh        $t6, -2($v0)
/* 25A10 80024E10 03E00008 */  jr         $ra
/* 25A14 80024E14 00000000 */   nop
