glabel func_800818C0
/* 824C0 800818C0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 824C4 800818C4 000E5880 */  sll        $t3, $t6, 2
/* 824C8 800818C8 016E5823 */  subu       $t3, $t3, $t6
/* 824CC 800818CC 000B5880 */  sll        $t3, $t3, 2
/* 824D0 800818D0 016E5821 */  addu       $t3, $t3, $t6
/* 824D4 800818D4 000B5880 */  sll        $t3, $t3, 2
/* 824D8 800818D8 3C03800F */  lui        $v1, %hi(D_800EF510)
/* 824DC 800818DC 016E5823 */  subu       $t3, $t3, $t6
/* 824E0 800818E0 2463F510 */  addiu      $v1, $v1, %lo(D_800EF510)
/* 824E4 800818E4 000B58C0 */  sll        $t3, $t3, 3
/* 824E8 800818E8 006B6021 */  addu       $t4, $v1, $t3
/* 824EC 800818EC 8D8D0168 */  lw         $t5, 0x168($t4)
/* 824F0 800818F0 3C01800F */  lui        $at, %hi(D_800ED02C)
/* 824F4 800818F4 448D2000 */  mtc1       $t5, $f4
/* 824F8 800818F8 C428D02C */  lwc1       $f8, %lo(D_800ED02C)($at)
/* 824FC 800818FC 468021A0 */  cvt.s.w    $f6, $f4
/* 82500 80081900 0006C400 */  sll        $t8, $a2, 0x10
/* 82504 80081904 0018CC03 */  sra        $t9, $t8, 0x10
/* 82508 80081908 46083283 */  div.s      $f10, $f6, $f8
/* 8250C 8008190C AFA60008 */  sw         $a2, 8($sp)
/* 82510 80081910 03203025 */  or         $a2, $t9, $zero
/* 82514 80081914 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 82518 80081918 000E4080 */  sll        $t0, $t6, 2
/* 8251C 8008191C 44868000 */  mtc1       $a2, $f16
/* 82520 80081920 010E4023 */  subu       $t0, $t0, $t6
/* 82524 80081924 000F5080 */  sll        $t2, $t7, 2
/* 82528 80081928 014F5023 */  subu       $t2, $t2, $t7
/* 8252C 8008192C 00084080 */  sll        $t0, $t0, 2
/* 82530 80081930 010E4021 */  addu       $t0, $t0, $t6
/* 82534 80081934 000A5080 */  sll        $t2, $t2, 2
/* 82538 80081938 468084A0 */  cvt.s.w    $f18, $f16
/* 8253C 8008193C 014F5021 */  addu       $t2, $t2, $t7
/* 82540 80081940 00084080 */  sll        $t0, $t0, 2
/* 82544 80081944 010E4023 */  subu       $t0, $t0, $t6
/* 82548 80081948 000A5080 */  sll        $t2, $t2, 2
/* 8254C 8008194C 46125103 */  div.s      $f4, $f10, $f18
/* 82550 80081950 014F5023 */  subu       $t2, $t2, $t7
/* 82554 80081954 000840C0 */  sll        $t0, $t0, 3
/* 82558 80081958 AFA40000 */  sw         $a0, ($sp)
/* 8255C 8008195C 00684821 */  addu       $t1, $v1, $t0
/* 82560 80081960 000A50C0 */  sll        $t2, $t2, 3
/* 82564 80081964 01C02025 */  or         $a0, $t6, $zero
/* 82568 80081968 012A1021 */  addu       $v0, $t1, $t2
/* 8256C 8008196C 8C4E0154 */  lw         $t6, 0x154($v0)
/* 82570 80081970 AFA50004 */  sw         $a1, 4($sp)
/* 82574 80081974 01E02825 */  or         $a1, $t7, $zero
/* 82578 80081978 05C10004 */  bgez       $t6, .L8008198C
/* 8257C 8008197C 000E7C03 */   sra       $t7, $t6, 0x10
/* 82580 80081980 3401FFFF */  ori        $at, $zero, 0xffff
/* 82584 80081984 002E0821 */  addu       $at, $at, $t6
/* 82588 80081988 00017C03 */  sra        $t7, $at, 0x10
.L8008198C:
/* 8258C 8008198C 01E6C021 */  addu       $t8, $t7, $a2
/* 82590 80081990 44983000 */  mtc1       $t8, $f6
/* 82594 80081994 00000000 */  nop
/* 82598 80081998 46803220 */  cvt.s.w    $f8, $f6
/* 8259C 8008199C 46044402 */  mul.s      $f16, $f8, $f4
/* 825A0 800819A0 03E00008 */  jr         $ra
/* 825A4 800819A4 E45000B8 */   swc1      $f16, 0xb8($v0)
