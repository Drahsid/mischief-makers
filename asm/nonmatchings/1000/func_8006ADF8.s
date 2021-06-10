glabel func_8006ADF8
/* 6B9F8 8006ADF8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6B9FC 8006ADFC 000E7880 */  sll        $t7, $t6, 2
/* 6BA00 8006AE00 01EE7823 */  subu       $t7, $t7, $t6
/* 6BA04 8006AE04 000F7880 */  sll        $t7, $t7, 2
/* 6BA08 8006AE08 01EE7821 */  addu       $t7, $t7, $t6
/* 6BA0C 8006AE0C 000F7880 */  sll        $t7, $t7, 2
/* 6BA10 8006AE10 01EE7823 */  subu       $t7, $t7, $t6
/* 6BA14 8006AE14 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6BA18 8006AE18 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6BA1C 8006AE1C 000F78C0 */  sll        $t7, $t7, 3
/* 6BA20 8006AE20 01F81021 */  addu       $v0, $t7, $t8
/* 6BA24 8006AE24 945900D0 */  lhu        $t9, 0xd0($v0)
/* 6BA28 8006AE28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6BA2C 8006AE2C 3C014040 */  lui        $at, 0x4040
/* 6BA30 8006AE30 44802000 */  mtc1       $zero, $f4
/* 6BA34 8006AE34 44813000 */  mtc1       $at, $f6
/* 6BA38 8006AE38 3C09800E */  lui        $t1, %hi(D_800E1D84)
/* 6BA3C 8006AE3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6BA40 8006AE40 AFA40018 */  sw         $a0, 0x18($sp)
/* 6BA44 8006AE44 25291D84 */  addiu      $t1, $t1, %lo(D_800E1D84)
/* 6BA48 8006AE48 240A0001 */  addiu      $t2, $zero, 1
/* 6BA4C 8006AE4C 27280001 */  addiu      $t0, $t9, 1
/* 6BA50 8006AE50 01C02025 */  or         $a0, $t6, $zero
/* 6BA54 8006AE54 A44800D0 */  sh         $t0, 0xd0($v0)
/* 6BA58 8006AE58 AC4900E8 */  sw         $t1, 0xe8($v0)
/* 6BA5C 8006AE5C A44A00E6 */  sh         $t2, 0xe6($v0)
/* 6BA60 8006AE60 AC40015C */  sw         $zero, 0x15c($v0)
/* 6BA64 8006AE64 AC400160 */  sw         $zero, 0x160($v0)
/* 6BA68 8006AE68 E4440118 */  swc1       $f4, 0x118($v0)
/* 6BA6C 8006AE6C 0C0196DE */  jal        func_80065B78
/* 6BA70 8006AE70 E446011C */   swc1      $f6, 0x11c($v0)
/* 6BA74 8006AE74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6BA78 8006AE78 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6BA7C 8006AE7C 03E00008 */  jr         $ra
/* 6BA80 8006AE80 00000000 */   nop
