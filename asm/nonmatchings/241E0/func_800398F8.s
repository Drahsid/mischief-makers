glabel func_800398F8
/* 3A4F8 800398F8 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 3A4FC 800398FC 000E7880 */  sll        $t7, $t6, 2
/* 3A500 80039900 01EE7823 */  subu       $t7, $t7, $t6
/* 3A504 80039904 000F7880 */  sll        $t7, $t7, 2
/* 3A508 80039908 01EE7821 */  addu       $t7, $t7, $t6
/* 3A50C 8003990C 000F7880 */  sll        $t7, $t7, 2
/* 3A510 80039910 01EE7823 */  subu       $t7, $t7, $t6
/* 3A514 80039914 000F78C0 */  sll        $t7, $t7, 3
/* 3A518 80039918 3C18800F */  lui        $t8, %hi(D_800EF5E2)
/* 3A51C 8003991C 030FC021 */  addu       $t8, $t8, $t7
/* 3A520 80039920 9718F5E2 */  lhu        $t8, %lo(D_800EF5E2)($t8)
/* 3A524 80039924 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A528 80039928 24010045 */  addiu      $at, $zero, 0x45
/* 3A52C 8003992C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A530 80039930 AFA40018 */  sw         $a0, 0x18($sp)
/* 3A534 80039934 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3A538 80039938 17010006 */  bne        $t8, $at, .L80039954
/* 3A53C 8003993C 3086FFFF */   andi      $a2, $a0, 0xffff
/* 3A540 80039940 24040116 */  addiu      $a0, $zero, 0x116
/* 3A544 80039944 0C000DB2 */  jal        func_800036C8
/* 3A548 80039948 30C5FFFF */   andi      $a1, $a2, 0xffff
/* 3A54C 8003994C 10000005 */  b          .L80039964
/* 3A550 80039950 8FBF0014 */   lw        $ra, 0x14($sp)
.L80039954:
/* 3A554 80039954 24040145 */  addiu      $a0, $zero, 0x145
/* 3A558 80039958 0C000DB2 */  jal        func_800036C8
/* 3A55C 8003995C 30C5FFFF */   andi      $a1, $a2, 0xffff
/* 3A560 80039960 8FBF0014 */  lw         $ra, 0x14($sp)
.L80039964:
/* 3A564 80039964 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3A568 80039968 03E00008 */  jr         $ra
/* 3A56C 8003996C 00000000 */   nop