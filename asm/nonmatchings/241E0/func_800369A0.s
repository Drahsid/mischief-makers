glabel func_800369A0
/* 375A0 800369A0 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 375A4 800369A4 24080400 */  addiu      $t0, $zero, 0x400
/* 375A8 800369A8 010F001A */  div        $zero, $t0, $t7
/* 375AC 800369AC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 375B0 800369B0 000EC080 */  sll        $t8, $t6, 2
/* 375B4 800369B4 030EC023 */  subu       $t8, $t8, $t6
/* 375B8 800369B8 0018C080 */  sll        $t8, $t8, 2
/* 375BC 800369BC 030EC021 */  addu       $t8, $t8, $t6
/* 375C0 800369C0 0018C080 */  sll        $t8, $t8, 2
/* 375C4 800369C4 030EC023 */  subu       $t8, $t8, $t6
/* 375C8 800369C8 3C19800F */  lui        $t9, %hi(gActors)
/* 375CC 800369CC 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 375D0 800369D0 0018C0C0 */  sll        $t8, $t8, 3
/* 375D4 800369D4 03191021 */  addu       $v0, $t8, $t9
/* 375D8 800369D8 AFA40000 */  sw         $a0, ($sp)
/* 375DC 800369DC AFA50004 */  sw         $a1, 4($sp)
/* 375E0 800369E0 01E02825 */  or         $a1, $t7, $zero
/* 375E4 800369E4 01C02025 */  or         $a0, $t6, $zero
/* 375E8 800369E8 14A00002 */  bnez       $a1, .L800369F4
/* 375EC 800369EC 00000000 */   nop
/* 375F0 800369F0 0007000D */  break      7
.L800369F4:
/* 375F4 800369F4 2401FFFF */   addiu     $at, $zero, -1
/* 375F8 800369F8 14A10004 */  bne        $a1, $at, .L80036A0C
/* 375FC 800369FC 3C018000 */   lui       $at, 0x8000
/* 37600 80036A00 15010002 */  bne        $t0, $at, .L80036A0C
/* 37604 80036A04 00000000 */   nop
/* 37608 80036A08 0006000D */  break      6
.L80036A0C:
/* 3760C 80036A0C 24C60008 */   addiu     $a2, $a2, 8
/* 37610 80036A10 00004812 */  mflo       $t1
/* 37614 80036A14 44892000 */  mtc1       $t1, $f4
/* 37618 80036A18 00000000 */  nop
/* 3761C 80036A1C 468021A0 */  cvt.s.w    $f6, $f4
/* 37620 80036A20 E4460114 */  swc1       $f6, 0x114($v0)
/* 37624 80036A24 94CAFFF8 */  lhu        $t2, -8($a2)
/* 37628 80036A28 00000000 */  nop
/* 3762C 80036A2C AC4A0174 */  sw         $t2, 0x174($v0)
/* 37630 80036A30 94CBFFFA */  lhu        $t3, -6($a2)
/* 37634 80036A34 00000000 */  nop
/* 37638 80036A38 AC4B0178 */  sw         $t3, 0x178($v0)
/* 3763C 80036A3C 94CCFFFC */  lhu        $t4, -4($a2)
/* 37640 80036A40 00000000 */  nop
/* 37644 80036A44 AC4C017C */  sw         $t4, 0x17c($v0)
/* 37648 80036A48 94CDFFFE */  lhu        $t5, -2($a2)
/* 3764C 80036A4C 00000000 */  nop
/* 37650 80036A50 AC4D0180 */  sw         $t5, 0x180($v0)
/* 37654 80036A54 94CE0000 */  lhu        $t6, ($a2)
/* 37658 80036A58 03E00008 */  jr         $ra
/* 3765C 80036A5C AC4E0184 */   sw        $t6, 0x184($v0)