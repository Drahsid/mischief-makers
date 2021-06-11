glabel func_8008CFE4
/* 8DBE4 8008CFE4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DBE8 8008CFE8 000E7880 */  sll        $t7, $t6, 2
/* 8DBEC 8008CFEC 01EE7823 */  subu       $t7, $t7, $t6
/* 8DBF0 8008CFF0 000F7880 */  sll        $t7, $t7, 2
/* 8DBF4 8008CFF4 01EE7821 */  addu       $t7, $t7, $t6
/* 8DBF8 8008CFF8 000F7880 */  sll        $t7, $t7, 2
/* 8DBFC 8008CFFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DC00 8008D000 01EE7823 */  subu       $t7, $t7, $t6
/* 8DC04 8008D004 3C18800F */  lui        $t8, %hi(gActors)
/* 8DC08 8008D008 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8DC0C 8008D00C 000F78C0 */  sll        $t7, $t7, 3
/* 8DC10 8008D010 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DC14 8008D014 AFA40020 */  sw         $a0, 0x20($sp)
/* 8DC18 8008D018 01F81021 */  addu       $v0, $t7, $t8
/* 8DC1C 8008D01C 24190090 */  addiu      $t9, $zero, 0x90
/* 8DC20 8008D020 01C02025 */  or         $a0, $t6, $zero
/* 8DC24 8008D024 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DC28 8008D028 AFA2001C */  sw         $v0, 0x1c($sp)
/* 8DC2C 8008D02C 0C023371 */  jal        func_8008CDC4
/* 8DC30 8008D030 24050012 */   addiu     $a1, $zero, 0x12
/* 8DC34 8008D034 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8DC38 8008D038 3C01FFFD */  lui        $at, 0xfffd
/* 8DC3C 8008D03C 8C480080 */  lw         $t0, 0x80($v0)
/* 8DC40 8008D040 8C4C0184 */  lw         $t4, 0x184($v0)
/* 8DC44 8008D044 3421FFFF */  ori        $at, $at, 0xffff
/* 8DC48 8008D048 448C2000 */  mtc1       $t4, $f4
/* 8DC4C 8008D04C 01014824 */  and        $t1, $t0, $at
/* 8DC50 8008D050 3C010001 */  lui        $at, 1
/* 8DC54 8008D054 468021A0 */  cvt.s.w    $f6, $f4
/* 8DC58 8008D058 01215825 */  or         $t3, $t1, $at
/* 8DC5C 8008D05C 3C013FE8 */  lui        $at, 0x3fe8
/* 8DC60 8008D060 44815800 */  mtc1       $at, $f11
/* 8DC64 8008D064 44805000 */  mtc1       $zero, $f10
/* 8DC68 8008D068 46003221 */  cvt.d.s    $f8, $f6
/* 8DC6C 8008D06C 462A4402 */  mul.d      $f16, $f8, $f10
/* 8DC70 8008D070 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DC74 8008D074 AC490080 */  sw         $t1, 0x80($v0)
/* 8DC78 8008D078 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8DC7C 8008D07C AC4B0080 */  sw         $t3, 0x80($v0)
/* 8DC80 8008D080 444DF800 */  cfc1       $t5, $31
/* 8DC84 8008D084 AC400188 */  sw         $zero, 0x188($v0)
/* 8DC88 8008D088 35A10003 */  ori        $at, $t5, 3
/* 8DC8C 8008D08C 38210002 */  xori       $at, $at, 2
/* 8DC90 8008D090 44C1F800 */  ctc1       $at, $31
/* 8DC94 8008D094 00000000 */  nop
/* 8DC98 8008D098 462084A4 */  cvt.w.d    $f18, $f16
/* 8DC9C 8008D09C 44CDF800 */  ctc1       $t5, $31
/* 8DCA0 8008D0A0 03E00008 */  jr         $ra
/* 8DCA4 8008D0A4 E4520184 */   swc1      $f18, 0x184($v0)
