glabel func_8009ECD8
/* 9F8D8 8009ECD8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9F8DC 8009ECDC 8C8E0044 */  lw         $t6, 0x44($a0)
/* 9F8E0 8009ECE0 44852000 */  mtc1       $a1, $f4
/* 9F8E4 8009ECE4 3C01800F */  lui        $at, %hi(D_800EDA00)
/* 9F8E8 8009ECE8 448E4000 */  mtc1       $t6, $f8
/* 9F8EC 8009ECEC 468021A0 */  cvt.s.w    $f6, $f4
/* 9F8F0 8009ECF0 D424DA00 */  ldc1       $f4, %lo(D_800EDA00)($at)
/* 9F8F4 8009ECF4 3C013FE0 */  lui        $at, 0x3fe0
/* 9F8F8 8009ECF8 44813800 */  mtc1       $at, $f7
/* 9F8FC 8009ECFC 468042A0 */  cvt.s.w    $f10, $f8
/* 9F900 8009ED00 460A3402 */  mul.s      $f16, $f6, $f10
/* 9F904 8009ED04 44803000 */  mtc1       $zero, $f6
/* 9F908 8009ED08 460084A1 */  cvt.d.s    $f18, $f16
/* 9F90C 8009ED0C 46249203 */  div.d      $f8, $f18, $f4
/* 9F910 8009ED10 46264280 */  add.d      $f10, $f8, $f6
/* 9F914 8009ED14 46205420 */  cvt.s.d    $f16, $f10
/* 9F918 8009ED18 E7B00004 */  swc1       $f16, 4($sp)
/* 9F91C 8009ED1C C7B20004 */  lwc1       $f18, 4($sp)
/* 9F920 8009ED20 4600910D */  trunc.w.s  $f4, $f18
/* 9F924 8009ED24 44022000 */  mfc1       $v0, $f4
/* 9F928 8009ED28 10000003 */  b          .L8009ED38
/* 9F92C 8009ED2C 00000000 */   nop
/* 9F930 8009ED30 10000001 */  b          .L8009ED38
/* 9F934 8009ED34 00000000 */   nop
.L8009ED38:
/* 9F938 8009ED38 03E00008 */  jr         $ra
/* 9F93C 8009ED3C 27BD0008 */   addiu     $sp, $sp, 8
