glabel func_80024668
/* 25268 80024668 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2526C 8002466C AFBF0014 */  sw         $ra, 0x14($sp)
/* 25270 80024670 0C008D7D */  jal        func_800235F4
/* 25274 80024674 00000000 */   nop
/* 25278 80024678 3C05800C */  lui        $a1, %hi(D_800BE558)
/* 2527C 8002467C 24A5E558 */  addiu      $a1, $a1, %lo(D_800BE558)
/* 25280 80024680 84A40000 */  lh         $a0, ($a1)
/* 25284 80024684 3C01800F */  lui        $at, %hi(D_800EB620)
/* 25288 80024688 44842000 */  mtc1       $a0, $f4
/* 2528C 8002468C C421B620 */  lwc1       $f1, %lo(D_800EB620)($at)
/* 25290 80024690 468021A1 */  cvt.d.w    $f6, $f4
/* 25294 80024694 C420B624 */  lwc1       $f0, -0x49dc($at)
/* 25298 80024698 3C0E800C */  lui        $t6, %hi(D_800BE560)
/* 2529C 8002469C 46203203 */  div.d      $f8, $f6, $f0
/* 252A0 800246A0 85CEE560 */  lh         $t6, %lo(D_800BE560)($t6)
/* 252A4 800246A4 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 252A8 800246A8 008E7823 */  subu       $t7, $a0, $t6
/* 252AC 800246AC 000FC400 */  sll        $t8, $t7, 0x10
/* 252B0 800246B0 AC38E73C */  sw         $t8, %lo(D_800BE73C)($at)
/* 252B4 800246B4 3C06800C */  lui        $a2, %hi(D_800BE550)
/* 252B8 800246B8 24C6E550 */  addiu      $a2, $a2, %lo(D_800BE550)
/* 252BC 800246BC 84CA0000 */  lh         $t2, ($a2)
/* 252C0 800246C0 00000000 */  nop
/* 252C4 800246C4 448A8000 */  mtc1       $t2, $f16
/* 252C8 800246C8 4459F800 */  cfc1       $t9, $31
/* 252CC 800246CC 00000000 */  nop
/* 252D0 800246D0 37210003 */  ori        $at, $t9, 3
/* 252D4 800246D4 38210002 */  xori       $at, $at, 2
/* 252D8 800246D8 44C1F800 */  ctc1       $at, $31
/* 252DC 800246DC 00000000 */  nop
/* 252E0 800246E0 462042A4 */  cvt.w.d    $f10, $f8
/* 252E4 800246E4 44D9F800 */  ctc1       $t9, $31
/* 252E8 800246E8 44025000 */  mfc1       $v0, $f10
/* 252EC 800246EC 468084A1 */  cvt.d.w    $f18, $f16
/* 252F0 800246F0 00024400 */  sll        $t0, $v0, 0x10
/* 252F4 800246F4 00084C03 */  sra        $t1, $t0, 0x10
/* 252F8 800246F8 46209103 */  div.d      $f4, $f18, $f0
/* 252FC 800246FC 01201025 */  or         $v0, $t1, $zero
/* 25300 80024700 444BF800 */  cfc1       $t3, $31
/* 25304 80024704 00000000 */  nop
/* 25308 80024708 35610003 */  ori        $at, $t3, 3
/* 2530C 8002470C 38210002 */  xori       $at, $at, 2
/* 25310 80024710 44C1F800 */  ctc1       $at, $31
/* 25314 80024714 29210200 */  slti       $at, $t1, 0x200
/* 25318 80024718 462021A4 */  cvt.w.d    $f6, $f4
/* 2531C 8002471C 44033000 */  mfc1       $v1, $f6
/* 25320 80024720 44CBF800 */  ctc1       $t3, $31
/* 25324 80024724 00036400 */  sll        $t4, $v1, 0x10
/* 25328 80024728 000C6C03 */  sra        $t5, $t4, 0x10
/* 2532C 8002472C 10200022 */  beqz       $at, .L800247B8
/* 25330 80024730 01A01825 */   or        $v1, $t5, $zero
/* 25334 80024734 25220200 */  addiu      $v0, $t1, 0x200
/* 25338 80024738 00027400 */  sll        $t6, $v0, 0x10
/* 2533C 8002473C 000E1403 */  sra        $v0, $t6, 0x10
/* 25340 80024740 44824000 */  mtc1       $v0, $f8
/* 25344 80024744 25A30200 */  addiu      $v1, $t5, 0x200
/* 25348 80024748 468042A1 */  cvt.d.w    $f10, $f8
/* 2534C 8002474C 00034400 */  sll        $t0, $v1, 0x10
/* 25350 80024750 00081C03 */  sra        $v1, $t0, 0x10
/* 25354 80024754 46205402 */  mul.d      $f16, $f10, $f0
/* 25358 80024758 44832000 */  mtc1       $v1, $f4
/* 2535C 8002475C 4458F800 */  cfc1       $t8, $31
/* 25360 80024760 00000000 */  nop
/* 25364 80024764 37010003 */  ori        $at, $t8, 3
/* 25368 80024768 38210002 */  xori       $at, $at, 2
/* 2536C 8002476C 44C1F800 */  ctc1       $at, $31
/* 25370 80024770 00000000 */  nop
/* 25374 80024774 462084A4 */  cvt.w.d    $f18, $f16
/* 25378 80024778 44D8F800 */  ctc1       $t8, $31
/* 2537C 8002477C 44199000 */  mfc1       $t9, $f18
/* 25380 80024780 468021A1 */  cvt.d.w    $f6, $f4
/* 25384 80024784 A4B90000 */  sh         $t9, ($a1)
/* 25388 80024788 46203202 */  mul.d      $f8, $f6, $f0
/* 2538C 8002478C 444AF800 */  cfc1       $t2, $31
/* 25390 80024790 00000000 */  nop
/* 25394 80024794 35410003 */  ori        $at, $t2, 3
/* 25398 80024798 38210002 */  xori       $at, $at, 2
/* 2539C 8002479C 44C1F800 */  ctc1       $at, $31
/* 253A0 800247A0 00000000 */  nop
/* 253A4 800247A4 462042A4 */  cvt.w.d    $f10, $f8
/* 253A8 800247A8 440B5000 */  mfc1       $t3, $f10
/* 253AC 800247AC 44CAF800 */  ctc1       $t2, $31
/* 253B0 800247B0 A4CB0000 */  sh         $t3, ($a2)
/* 253B4 800247B4 00000000 */  nop
.L800247B8:
/* 253B8 800247B8 28410401 */  slti       $at, $v0, 0x401
/* 253BC 800247BC 14200021 */  bnez       $at, .L80024844
/* 253C0 800247C0 2442FE00 */   addiu     $v0, $v0, -0x200
/* 253C4 800247C4 00026400 */  sll        $t4, $v0, 0x10
/* 253C8 800247C8 000C1403 */  sra        $v0, $t4, 0x10
/* 253CC 800247CC 44828000 */  mtc1       $v0, $f16
/* 253D0 800247D0 2463FE00 */  addiu      $v1, $v1, -0x200
/* 253D4 800247D4 468084A1 */  cvt.d.w    $f18, $f16
/* 253D8 800247D8 0003C400 */  sll        $t8, $v1, 0x10
/* 253DC 800247DC 00181C03 */  sra        $v1, $t8, 0x10
/* 253E0 800247E0 46209102 */  mul.d      $f4, $f18, $f0
/* 253E4 800247E4 44834000 */  mtc1       $v1, $f8
/* 253E8 800247E8 444EF800 */  cfc1       $t6, $31
/* 253EC 800247EC 00000000 */  nop
/* 253F0 800247F0 35C10003 */  ori        $at, $t6, 3
/* 253F4 800247F4 38210002 */  xori       $at, $at, 2
/* 253F8 800247F8 44C1F800 */  ctc1       $at, $31
/* 253FC 800247FC 00000000 */  nop
/* 25400 80024800 462021A4 */  cvt.w.d    $f6, $f4
/* 25404 80024804 44CEF800 */  ctc1       $t6, $31
/* 25408 80024808 440F3000 */  mfc1       $t7, $f6
/* 2540C 8002480C 468042A1 */  cvt.d.w    $f10, $f8
/* 25410 80024810 A4AF0000 */  sh         $t7, ($a1)
/* 25414 80024814 46205402 */  mul.d      $f16, $f10, $f0
/* 25418 80024818 4448F800 */  cfc1       $t0, $31
/* 2541C 8002481C 00000000 */  nop
/* 25420 80024820 35010003 */  ori        $at, $t0, 3
/* 25424 80024824 38210002 */  xori       $at, $at, 2
/* 25428 80024828 44C1F800 */  ctc1       $at, $31
/* 2542C 8002482C 00000000 */  nop
/* 25430 80024830 462084A4 */  cvt.w.d    $f18, $f16
/* 25434 80024834 44099000 */  mfc1       $t1, $f18
/* 25438 80024838 44C8F800 */  ctc1       $t0, $31
/* 2543C 8002483C A4C90000 */  sh         $t1, ($a2)
/* 25440 80024840 00000000 */  nop
.L80024844:
/* 25444 80024844 8FBF0014 */  lw         $ra, 0x14($sp)
/* 25448 80024848 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2544C 8002484C 03E00008 */  jr         $ra
/* 25450 80024850 00000000 */   nop
