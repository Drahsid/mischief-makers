glabel func_8002488C
/* 2548C 8002488C 3C03800C */  lui        $v1, %hi(D_800BE734)
/* 25490 80024890 3C02800C */  lui        $v0, %hi(D_800BE73C)
/* 25494 80024894 8C42E73C */  lw         $v0, %lo(D_800BE73C)($v0)
/* 25498 80024898 2463E734 */  addiu      $v1, $v1, %lo(D_800BE734)
/* 2549C 8002489C 8C6E0000 */  lw         $t6, ($v1)
/* 254A0 800248A0 3C09800C */  lui        $t1, 0x800c
/* 254A4 800248A4 3C04800C */  lui        $a0, %hi(D_800BE738)
/* 254A8 800248A8 2484E738 */  addiu      $a0, $a0, %lo(D_800BE738)
/* 254AC 800248AC 04410003 */  bgez       $v0, .L800248BC
/* 254B0 800248B0 00027883 */   sra       $t7, $v0, 2
/* 254B4 800248B4 24410003 */  addiu      $at, $v0, 3
/* 254B8 800248B8 00017883 */  sra        $t7, $at, 2
.L800248BC:
/* 254BC 800248BC 01CFC021 */  addu       $t8, $t6, $t7
/* 254C0 800248C0 0300C825 */  or         $t9, $t8, $zero
/* 254C4 800248C4 AC780000 */  sw         $t8, ($v1)
/* 254C8 800248C8 07210004 */  bgez       $t9, .L800248DC
/* 254CC 800248CC 00194403 */   sra       $t0, $t9, 0x10
/* 254D0 800248D0 3401FFFF */  ori        $at, $zero, 0xffff
/* 254D4 800248D4 00390821 */  addu       $at, $at, $t9
/* 254D8 800248D8 00014403 */  sra        $t0, $at, 0x10
.L800248DC:
/* 254DC 800248DC 8529E55C */  lh         $t1, -0x1aa4($t1)
/* 254E0 800248E0 3C01800C */  lui        $at, %hi(D_800BE578)
/* 254E4 800248E4 44892000 */  mtc1       $t1, $f4
/* 254E8 800248E8 A428E578 */  sh         $t0, %lo(D_800BE578)($at)
/* 254EC 800248EC 3C01800F */  lui        $at, %hi(D_800EB628)
/* 254F0 800248F0 468021A1 */  cvt.d.w    $f6, $f4
/* 254F4 800248F4 C429B628 */  lwc1       $f9, %lo(D_800EB628)($at)
/* 254F8 800248F8 C428B62C */  lwc1       $f8, -0x49d4($at)
/* 254FC 800248FC 3C01800F */  lui        $at, %hi(D_800EB630)
/* 25500 80024900 46283003 */  div.d      $f0, $f6, $f8
/* 25504 80024904 C42BB630 */  lwc1       $f11, %lo(D_800EB630)($at)
/* 25508 80024908 C42AB634 */  lwc1       $f10, -0x49cc($at)
/* 2550C 8002490C 00000000 */  nop
/* 25510 80024910 462A0401 */  sub.d      $f16, $f0, $f10
/* 25514 80024914 444AF800 */  cfc1       $t2, $31
/* 25518 80024918 00000000 */  nop
/* 2551C 8002491C 35410003 */  ori        $at, $t2, 3
/* 25520 80024920 38210002 */  xori       $at, $at, 2
/* 25524 80024924 44C1F800 */  ctc1       $at, $31
/* 25528 80024928 3C01800C */  lui        $at, %hi(D_800BE580)
/* 2552C 8002492C 462084A4 */  cvt.w.d    $f18, $f16
/* 25530 80024930 440B9000 */  mfc1       $t3, $f18
/* 25534 80024934 44CAF800 */  ctc1       $t2, $31
/* 25538 80024938 A42BE580 */  sh         $t3, %lo(D_800BE580)($at)
/* 2553C 8002493C 8C8C0000 */  lw         $t4, ($a0)
/* 25540 80024940 04410003 */  bgez       $v0, .L80024950
/* 25544 80024944 000268C3 */   sra       $t5, $v0, 3
/* 25548 80024948 24410007 */  addiu      $at, $v0, 7
/* 2554C 8002494C 000168C3 */  sra        $t5, $at, 3
.L80024950:
/* 25550 80024950 018D7021 */  addu       $t6, $t4, $t5
/* 25554 80024954 01C07825 */  or         $t7, $t6, $zero
/* 25558 80024958 AC8E0000 */  sw         $t6, ($a0)
/* 2555C 8002495C 05E10004 */  bgez       $t7, .L80024970
/* 25560 80024960 000FC403 */   sra       $t8, $t7, 0x10
/* 25564 80024964 3401FFFF */  ori        $at, $zero, 0xffff
/* 25568 80024968 002F0821 */  addu       $at, $at, $t7
/* 2556C 8002496C 0001C403 */  sra        $t8, $at, 0x10
.L80024970:
/* 25570 80024970 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 25574 80024974 A438E57C */  sh         $t8, %lo(D_800BE57C)($at)
/* 25578 80024978 3C01800F */  lui        $at, %hi(D_800EB638)
/* 2557C 8002497C C425B638 */  lwc1       $f5, %lo(D_800EB638)($at)
/* 25580 80024980 C424B63C */  lwc1       $f4, -0x49c4($at)
/* 25584 80024984 00000000 */  nop
/* 25588 80024988 46240181 */  sub.d      $f6, $f0, $f4
/* 2558C 8002498C 4459F800 */  cfc1       $t9, $31
/* 25590 80024990 00000000 */  nop
/* 25594 80024994 37210003 */  ori        $at, $t9, 3
/* 25598 80024998 38210002 */  xori       $at, $at, 2
/* 2559C 8002499C 44C1F800 */  ctc1       $at, $31
/* 255A0 800249A0 3C01800C */  lui        $at, %hi(D_800BE584)
/* 255A4 800249A4 46203224 */  cvt.w.d    $f8, $f6
/* 255A8 800249A8 44084000 */  mfc1       $t0, $f8
/* 255AC 800249AC 44D9F800 */  ctc1       $t9, $31
/* 255B0 800249B0 03E00008 */  jr         $ra
/* 255B4 800249B4 A428E584 */   sh        $t0, %lo(D_800BE584)($at)