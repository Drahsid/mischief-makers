glabel func_8002D488
/* 2E088 8002D488 4459F800 */  cfc1       $t9, $31
/* 2E08C 8002D48C 3C01800C */  lui        $at, %hi(gAtX)
/* 2E090 8002D490 C424E5B4 */  lwc1       $f4, %lo(gAtX)($at)
/* 2E094 8002D494 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2E098 8002D498 37210003 */  ori        $at, $t9, 3
/* 2E09C 8002D49C 38210002 */  xori       $at, $at, 2
/* 2E0A0 8002D4A0 000E7880 */  sll        $t7, $t6, 2
/* 2E0A4 8002D4A4 44C1F800 */  ctc1       $at, $31
/* 2E0A8 8002D4A8 01EE7823 */  subu       $t7, $t7, $t6
/* 2E0AC 8002D4AC 000F7880 */  sll        $t7, $t7, 2
/* 2E0B0 8002D4B0 460021A4 */  cvt.w.s    $f6, $f4
/* 2E0B4 8002D4B4 01EE7821 */  addu       $t7, $t7, $t6
/* 2E0B8 8002D4B8 000F7880 */  sll        $t7, $t7, 2
/* 2E0BC 8002D4BC 44D9F800 */  ctc1       $t9, $31
/* 2E0C0 8002D4C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2E0C4 8002D4C4 01EE7823 */  subu       $t7, $t7, $t6
/* 2E0C8 8002D4C8 3C18800F */  lui        $t8, %hi(gActors)
/* 2E0CC 8002D4CC 44083000 */  mfc1       $t0, $f6
/* 2E0D0 8002D4D0 AFB00018 */  sw         $s0, 0x18($sp)
/* 2E0D4 8002D4D4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2E0D8 8002D4D8 000F78C0 */  sll        $t7, $t7, 3
/* 2E0DC 8002D4DC 01F88021 */  addu       $s0, $t7, $t8
/* 2E0E0 8002D4E0 4449F800 */  cfc1       $t1, $31
/* 2E0E4 8002D4E4 3C01800C */  lui        $at, %hi(gAtY)
/* 2E0E8 8002D4E8 A6080088 */  sh         $t0, 0x88($s0)
/* 2E0EC 8002D4EC C428E5B8 */  lwc1       $f8, %lo(gAtY)($at)
/* 2E0F0 8002D4F0 35210003 */  ori        $at, $t1, 3
/* 2E0F4 8002D4F4 38210002 */  xori       $at, $at, 2
/* 2E0F8 8002D4F8 44C1F800 */  ctc1       $at, $31
/* 2E0FC 8002D4FC 3C01800C */  lui        $at, 0x800c
/* 2E100 8002D500 460042A4 */  cvt.w.s    $f10, $f8
/* 2E104 8002D504 960200D0 */  lhu        $v0, 0xd0($s0)
/* 2E108 8002D508 440A5000 */  mfc1       $t2, $f10
/* 2E10C 8002D50C 44C9F800 */  ctc1       $t1, $31
/* 2E110 8002D510 A60A008C */  sh         $t2, 0x8c($s0)
/* 2E114 8002D514 C430E5B0 */  lwc1       $f16, -0x1a50($at)
/* 2E118 8002D518 3C0143A0 */  lui        $at, 0x43a0
/* 2E11C 8002D51C 44819000 */  mtc1       $at, $f18
/* 2E120 8002D520 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2E124 8002D524 46128101 */  sub.s      $f4, $f16, $f18
/* 2E128 8002D528 AFA40020 */  sw         $a0, 0x20($sp)
/* 2E12C 8002D52C 444BF800 */  cfc1       $t3, $31
/* 2E130 8002D530 00000000 */  nop
/* 2E134 8002D534 35610003 */  ori        $at, $t3, 3
/* 2E138 8002D538 38210002 */  xori       $at, $at, 2
/* 2E13C 8002D53C 44C1F800 */  ctc1       $at, $31
/* 2E140 8002D540 24010001 */  addiu      $at, $zero, 1
/* 2E144 8002D544 460021A4 */  cvt.w.s    $f6, $f4
/* 2E148 8002D548 440C3000 */  mfc1       $t4, $f6
/* 2E14C 8002D54C 44CBF800 */  ctc1       $t3, $31
/* 2E150 8002D550 10410008 */  beq        $v0, $at, .L8002D574
/* 2E154 8002D554 AE0C0188 */   sw        $t4, 0x188($s0)
/* 2E158 8002D558 24010002 */  addiu      $at, $zero, 2
/* 2E15C 8002D55C 10410011 */  beq        $v0, $at, .L8002D5A4
/* 2E160 8002D560 24010003 */   addiu     $at, $zero, 3
/* 2E164 8002D564 10410015 */  beq        $v0, $at, .L8002D5BC
/* 2E168 8002D568 00000000 */   nop
/* 2E16C 8002D56C 1000001A */  b          .L8002D5D8
/* 2E170 8002D570 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002D574:
/* 2E174 8002D574 9204009F */  lbu        $a0, 0x9f($s0)
/* 2E178 8002D578 8E060154 */  lw         $a2, 0x154($s0)
/* 2E17C 8002D57C 0C00A607 */  jal        func_8002981C
/* 2E180 8002D580 00002825 */   or        $a1, $zero, $zero
/* 2E184 8002D584 304D00FF */  andi       $t5, $v0, 0xff
/* 2E188 8002D588 15A00012 */  bnez       $t5, .L8002D5D4
/* 2E18C 8002D58C A202009F */   sb        $v0, 0x9f($s0)
/* 2E190 8002D590 240E0002 */  addiu      $t6, $zero, 2
/* 2E194 8002D594 A60000D0 */  sh         $zero, 0xd0($s0)
/* 2E198 8002D598 A6000094 */  sh         $zero, 0x94($s0)
/* 2E19C 8002D59C 1000000D */  b          .L8002D5D4
/* 2E1A0 8002D5A0 AE0E0080 */   sw        $t6, 0x80($s0)
.L8002D5A4:
/* 2E1A4 8002D5A4 9204009F */  lbu        $a0, 0x9f($s0)
/* 2E1A8 8002D5A8 8E060154 */  lw         $a2, 0x154($s0)
/* 2E1AC 8002D5AC 0C00A607 */  jal        func_8002981C
/* 2E1B0 8002D5B0 240500FF */   addiu     $a1, $zero, 0xff
/* 2E1B4 8002D5B4 10000007 */  b          .L8002D5D4
/* 2E1B8 8002D5B8 A202009F */   sb        $v0, 0x9f($s0)
.L8002D5BC:
/* 2E1BC 8002D5BC 9204009F */  lbu        $a0, 0x9f($s0)
/* 2E1C0 8002D5C0 8E050158 */  lw         $a1, 0x158($s0)
/* 2E1C4 8002D5C4 8E060154 */  lw         $a2, 0x154($s0)
/* 2E1C8 8002D5C8 0C00A607 */  jal        func_8002981C
/* 2E1CC 8002D5CC 00000000 */   nop
/* 2E1D0 8002D5D0 A202009F */  sb         $v0, 0x9f($s0)
.L8002D5D4:
/* 2E1D4 8002D5D4 8FBF001C */  lw         $ra, 0x1c($sp)
.L8002D5D8:
/* 2E1D8 8002D5D8 8FB00018 */  lw         $s0, 0x18($sp)
/* 2E1DC 8002D5DC 03E00008 */  jr         $ra
/* 2E1E0 8002D5E0 27BD0020 */   addiu     $sp, $sp, 0x20
