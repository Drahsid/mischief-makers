glabel func_8007CCE0
/* 7D8E0 8007CCE0 3C0105F5 */  lui        $at, 0x5f5
/* 7D8E4 8007CCE4 3421E100 */  ori        $at, $at, 0xe100
/* 7D8E8 8007CCE8 0081082B */  sltu       $at, $a0, $at
/* 7D8EC 8007CCEC 14200003 */  bnez       $at, .L8007CCFC
/* 7D8F0 8007CCF0 3C020098 */   lui       $v0, 0x98
/* 7D8F4 8007CCF4 3C0405F5 */  lui        $a0, 0x5f5
/* 7D8F8 8007CCF8 3484E0FF */  ori        $a0, $a0, 0xe0ff
.L8007CCFC:
/* 7D8FC 8007CCFC 3C05800E */  lui        $a1, %hi(D_800E0F00)
/* 7D900 8007CD00 34429680 */  ori        $v0, $v0, 0x9680
/* 7D904 8007CD04 24A50F00 */  addiu      $a1, $a1, %lo(D_800E0F00)
/* 7D908 8007CD08 00001825 */  or         $v1, $zero, $zero
/* 7D90C 8007CD0C 2406000A */  addiu      $a2, $zero, 0xa
.L8007CD10:
/* 7D910 8007CD10 0082001B */  divu       $zero, $a0, $v0
/* 7D914 8007CD14 00A37821 */  addu       $t7, $a1, $v1
/* 7D918 8007CD18 24630001 */  addiu      $v1, $v1, 1
/* 7D91C 8007CD1C 3078FFFF */  andi       $t8, $v1, 0xffff
/* 7D920 8007CD20 03001825 */  or         $v1, $t8, $zero
/* 7D924 8007CD24 14400002 */  bnez       $v0, .L8007CD30
/* 7D928 8007CD28 00000000 */   nop
/* 7D92C 8007CD2C 0007000D */  break      7
.L8007CD30:
/* 7D930 8007CD30 28610008 */   slti      $at, $v1, 8
/* 7D934 8007CD34 00007012 */  mflo       $t6
/* 7D938 8007CD38 00002010 */  mfhi       $a0
/* 7D93C 8007CD3C A1EE0000 */  sb         $t6, ($t7)
/* 7D940 8007CD40 00000000 */  nop
/* 7D944 8007CD44 0046001B */  divu       $zero, $v0, $a2
/* 7D948 8007CD48 14C00002 */  bnez       $a2, .L8007CD54
/* 7D94C 8007CD4C 00000000 */   nop
/* 7D950 8007CD50 0007000D */  break      7
.L8007CD54:
/* 7D954 8007CD54 00001012 */   mflo      $v0
/* 7D958 8007CD58 1420FFED */  bnez       $at, .L8007CD10
/* 7D95C 8007CD5C 00000000 */   nop
/* 7D960 8007CD60 03E00008 */  jr         $ra
/* 7D964 8007CD64 00000000 */   nop
