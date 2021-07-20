glabel func_80034D80
/* 35980 80034D80 3C0A800F */  lui        $t2, 0x800f
/* 35984 80034D84 3C09800D */  lui        $t1, %hi(D_800D22BC)
/* 35988 80034D88 AFA40000 */  sw         $a0, ($sp)
/* 3598C 80034D8C 3087FFFF */  andi       $a3, $a0, 0xffff
/* 35990 80034D90 AFA60008 */  sw         $a2, 8($sp)
/* 35994 80034D94 252922BC */  addiu      $t1, $t1, %lo(D_800D22BC)
/* 35998 80034D98 254AF510 */  addiu      $t2, $t2, -0xaf0
/* 3599C 80034D9C 2402009B */  addiu      $v0, $zero, 0x9b
/* 359A0 80034DA0 240B0198 */  addiu      $t3, $zero, 0x198
/* 359A4 80034DA4 3408FFFF */  ori        $t0, $zero, 0xffff
.L80034DA8:
/* 359A8 80034DA8 94A30000 */  lhu        $v1, ($a1)
/* 359AC 80034DAC 00027040 */  sll        $t6, $v0, 1
/* 359B0 80034DB0 11030015 */  beq        $t0, $v1, .L80034E08
/* 359B4 80034DB4 012E3021 */   addu      $a2, $t1, $t6
/* 359B8 80034DB8 00EB0019 */  multu      $a3, $t3
/* 359BC 80034DBC A4C30000 */  sh         $v1, ($a2)
/* 359C0 80034DC0 94AF0002 */  lhu        $t7, 2($a1)
/* 359C4 80034DC4 24A5000A */  addiu      $a1, $a1, 0xa
/* 359C8 80034DC8 A4CF0002 */  sh         $t7, 2($a2)
/* 359CC 80034DCC 94B8FFFA */  lhu        $t8, -6($a1)
/* 359D0 80034DD0 00000000 */  nop
/* 359D4 80034DD4 A4D80004 */  sh         $t8, 4($a2)
/* 359D8 80034DD8 94B9FFFC */  lhu        $t9, -4($a1)
/* 359DC 80034DDC 00000000 */  nop
/* 359E0 80034DE0 A4D90006 */  sh         $t9, 6($a2)
/* 359E4 80034DE4 94ACFFFE */  lhu        $t4, -2($a1)
/* 359E8 80034DE8 00006812 */  mflo       $t5
/* 359EC 80034DEC 014D7021 */  addu       $t6, $t2, $t5
/* 359F0 80034DF0 ADC20170 */  sw         $v0, 0x170($t6)
/* 359F4 80034DF4 2442FFFB */  addiu      $v0, $v0, -5
/* 359F8 80034DF8 304FFFFF */  andi       $t7, $v0, 0xffff
/* 359FC 80034DFC 01E01025 */  or         $v0, $t7, $zero
/* 35A00 80034E00 05E1FFE9 */  bgez       $t7, .L80034DA8
/* 35A04 80034E04 A4CC0008 */   sh        $t4, 8($a2)
.L80034E08:
/* 35A08 80034E08 03E00008 */  jr         $ra
/* 35A0C 80034E0C 00000000 */   nop
