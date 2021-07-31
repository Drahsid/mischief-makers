glabel func_8004C5FC
/* 4D1FC 8004C5FC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4D200 8004C600 AFA40030 */  sw         $a0, 0x30($sp)
/* 4D204 8004C604 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4D208 8004C608 97A40032 */  lhu        $a0, 0x32($sp)
/* 4D20C 8004C60C AFB00018 */  sw         $s0, 0x18($sp)
/* 4D210 8004C610 00002825 */  or         $a1, $zero, $zero
/* 4D214 8004C614 0C01246E */  jal        func_800491B8
/* 4D218 8004C618 2406FFF2 */   addiu     $a2, $zero, -0xe
/* 4D21C 8004C61C 1040000E */  beqz       $v0, .L8004C658
/* 4D220 8004C620 3C09800F */   lui       $t1, 0x800f
/* 4D224 8004C624 97AF0032 */  lhu        $t7, 0x32($sp)
/* 4D228 8004C628 3C01800F */  lui        $at, 0x800f
/* 4D22C 8004C62C 000FC080 */  sll        $t8, $t7, 2
/* 4D230 8004C630 030FC023 */  subu       $t8, $t8, $t7
/* 4D234 8004C634 0018C080 */  sll        $t8, $t8, 2
/* 4D238 8004C638 030FC021 */  addu       $t8, $t8, $t7
/* 4D23C 8004C63C 0018C080 */  sll        $t8, $t8, 2
/* 4D240 8004C640 030FC023 */  subu       $t8, $t8, $t7
/* 4D244 8004C644 0018C0C0 */  sll        $t8, $t8, 3
/* 4D248 8004C648 00380821 */  addu       $at, $at, $t8
/* 4D24C 8004C64C 240E0005 */  addiu      $t6, $zero, 5
/* 4D250 8004C650 100001EE */  b          .L8004CE0C
/* 4D254 8004C654 A42EF5E0 */   sh        $t6, -0xa20($at)
.L8004C658:
/* 4D258 8004C658 97B90032 */  lhu        $t9, 0x32($sp)
/* 4D25C 8004C65C 2529F510 */  addiu      $t1, $t1, -0xaf0
/* 4D260 8004C660 00194080 */  sll        $t0, $t9, 2
/* 4D264 8004C664 01194023 */  subu       $t0, $t0, $t9
/* 4D268 8004C668 00084080 */  sll        $t0, $t0, 2
/* 4D26C 8004C66C 01194021 */  addu       $t0, $t0, $t9
/* 4D270 8004C670 00084080 */  sll        $t0, $t0, 2
/* 4D274 8004C674 01194023 */  subu       $t0, $t0, $t9
/* 4D278 8004C678 000840C0 */  sll        $t0, $t0, 3
/* 4D27C 8004C67C 01098021 */  addu       $s0, $t0, $t1
/* 4D280 8004C680 920A00D0 */  lbu        $t2, 0xd0($s0)
/* 4D284 8004C684 240D0010 */  addiu      $t5, $zero, 0x10
/* 4D288 8004C688 154000ED */  bnez       $t2, .L8004CA40
/* 4D28C 8004C68C 24010011 */   addiu     $at, $zero, 0x11
/* 4D290 8004C690 8E0B00EC */  lw         $t3, 0xec($s0)
/* 4D294 8004C694 8E0C00F0 */  lw         $t4, 0xf0($s0)
/* 4D298 8004C698 920F00D1 */  lbu        $t7, 0xd1($s0)
/* 4D29C 8004C69C AE0D0150 */  sw         $t5, 0x150($s0)
/* 4D2A0 8004C6A0 AE0B00F8 */  sw         $t3, 0xf8($s0)
/* 4D2A4 8004C6A4 15E10003 */  bne        $t7, $at, .L8004C6B4
/* 4D2A8 8004C6A8 AE0C00FC */   sw        $t4, 0xfc($s0)
/* 4D2AC 8004C6AC 240E0020 */  addiu      $t6, $zero, 0x20
/* 4D2B0 8004C6B0 AE0E0150 */  sw         $t6, 0x150($s0)
.L8004C6B4:
/* 4D2B4 8004C6B4 24180001 */  addiu      $t8, $zero, 1
/* 4D2B8 8004C6B8 AE000158 */  sw         $zero, 0x158($s0)
/* 4D2BC 8004C6BC A21800D0 */  sb         $t8, 0xd0($s0)
/* 4D2C0 8004C6C0 3C028013 */  lui        $v0, %hi(D_801373F0)
/* 4D2C4 8004C6C4 804273F0 */  lb         $v0, %lo(D_801373F0)($v0)
/* 4D2C8 8004C6C8 24010008 */  addiu      $at, $zero, 8
/* 4D2CC 8004C6CC 10400005 */  beqz       $v0, .L8004C6E4
/* 4D2D0 8004C6D0 00000000 */   nop
/* 4D2D4 8004C6D4 1041003F */  beq        $v0, $at, .L8004C7D4
/* 4D2D8 8004C6D8 240D0015 */   addiu     $t5, $zero, 0x15
/* 4D2DC 8004C6DC 1000005B */  b          .L8004C84C
/* 4D2E0 8004C6E0 30480008 */   andi      $t0, $v0, 8
.L8004C6E4:
/* 4D2E4 8004C6E4 0C012325 */  jal        func_80048C94
/* 4D2E8 8004C6E8 2404001C */   addiu     $a0, $zero, 0x1c
/* 4D2EC 8004C6EC 00024023 */  negu       $t0, $v0
/* 4D2F0 8004C6F0 44884000 */  mtc1       $t0, $f8
/* 4D2F4 8004C6F4 3C013FD0 */  lui        $at, 0x3fd0
/* 4D2F8 8004C6F8 468042A1 */  cvt.d.w    $f10, $f8
/* 4D2FC 8004C6FC 44818800 */  mtc1       $at, $f17
/* 4D300 8004C700 8E1900F0 */  lw         $t9, 0xf0($s0)
/* 4D304 8004C704 44808000 */  mtc1       $zero, $f16
/* 4D308 8004C708 44992000 */  mtc1       $t9, $f4
/* 4D30C 8004C70C 46305482 */  mul.d      $f18, $f10, $f16
/* 4D310 8004C710 468021A1 */  cvt.d.w    $f6, $f4
/* 4D314 8004C714 4626903E */  c.le.d     $f18, $f6
/* 4D318 8004C718 00000000 */  nop
/* 4D31C 8004C71C 45000014 */  bc1f       .L8004C770
/* 4D320 8004C720 00000000 */   nop
/* 4D324 8004C724 0C012325 */  jal        func_80048C94
/* 4D328 8004C728 2404001C */   addiu     $a0, $zero, 0x1c
/* 4D32C 8004C72C 44822000 */  mtc1       $v0, $f4
/* 4D330 8004C730 3C013FF8 */  lui        $at, 0x3ff8
/* 4D334 8004C734 46802221 */  cvt.d.w    $f8, $f4
/* 4D338 8004C738 44810800 */  mtc1       $at, $f1
/* 4D33C 8004C73C 44800000 */  mtc1       $zero, $f0
/* 4D340 8004C740 00000000 */  nop
/* 4D344 8004C744 46204282 */  mul.d      $f10, $f8, $f0
/* 4D348 8004C748 4449F800 */  cfc1       $t1, $31
/* 4D34C 8004C74C 00000000 */  nop
/* 4D350 8004C750 35210003 */  ori        $at, $t1, 3
/* 4D354 8004C754 38210002 */  xori       $at, $at, 2
/* 4D358 8004C758 44C1F800 */  ctc1       $at, $31
/* 4D35C 8004C75C 00000000 */  nop
/* 4D360 8004C760 46205424 */  cvt.w.d    $f16, $f10
/* 4D364 8004C764 44C9F800 */  ctc1       $t1, $31
/* 4D368 8004C768 10000004 */  b          .L8004C77C
/* 4D36C 8004C76C E61000F0 */   swc1      $f16, 0xf0($s0)
.L8004C770:
/* 4D370 8004C770 0C012325 */  jal        func_80048C94
/* 4D374 8004C774 2404001C */   addiu     $a0, $zero, 0x1c
/* 4D378 8004C778 AE0200F0 */  sw         $v0, 0xf0($s0)
.L8004C77C:
/* 4D37C 8004C77C 240A0018 */  addiu      $t2, $zero, 0x18
/* 4D380 8004C780 AE0A0150 */  sw         $t2, 0x150($s0)
/* 4D384 8004C784 0C012325 */  jal        func_80048C94
/* 4D388 8004C788 24040013 */   addiu     $a0, $zero, 0x13
/* 4D38C 8004C78C 44823000 */  mtc1       $v0, $f6
/* 4D390 8004C790 3C01800F */  lui        $at, %hi(D_800EBD98)
/* 4D394 8004C794 468034A1 */  cvt.d.w    $f18, $f6
/* 4D398 8004C798 C425BD98 */  lwc1       $f5, %lo(D_800EBD98)($at)
/* 4D39C 8004C79C C424BD9C */  lwc1       $f4, -0x4264($at)
/* 4D3A0 8004C7A0 240C004D */  addiu      $t4, $zero, 0x4d
/* 4D3A4 8004C7A4 46249202 */  mul.d      $f8, $f18, $f4
/* 4D3A8 8004C7A8 AE0C0170 */  sw         $t4, 0x170($s0)
/* 4D3AC 8004C7AC 444BF800 */  cfc1       $t3, $31
/* 4D3B0 8004C7B0 00000000 */  nop
/* 4D3B4 8004C7B4 35610003 */  ori        $at, $t3, 3
/* 4D3B8 8004C7B8 38210002 */  xori       $at, $at, 2
/* 4D3BC 8004C7BC 44C1F800 */  ctc1       $at, $31
/* 4D3C0 8004C7C0 00000000 */  nop
/* 4D3C4 8004C7C4 462042A4 */  cvt.w.d    $f10, $f8
/* 4D3C8 8004C7C8 44CBF800 */  ctc1       $t3, $31
/* 4D3CC 8004C7CC 1000007C */  b          .L8004C9C0
/* 4D3D0 8004C7D0 E60A0158 */   swc1      $f10, 0x158($s0)
.L8004C7D4:
/* 4D3D4 8004C7D4 0C012325 */  jal        func_80048C94
/* 4D3D8 8004C7D8 2404001C */   addiu     $a0, $zero, 0x1c
/* 4D3DC 8004C7DC 8E0D00F0 */  lw         $t5, 0xf0($s0)
/* 4D3E0 8004C7E0 3C01FFF4 */  lui        $at, 0xfff4
/* 4D3E4 8004C7E4 00417821 */  addu       $t7, $v0, $at
/* 4D3E8 8004C7E8 01ED082A */  slt        $at, $t7, $t5
/* 4D3EC 8004C7EC 10200007 */  beqz       $at, .L8004C80C
/* 4D3F0 8004C7F0 00000000 */   nop
/* 4D3F4 8004C7F4 0C012325 */  jal        func_80048C94
/* 4D3F8 8004C7F8 2404001C */   addiu     $a0, $zero, 0x1c
/* 4D3FC 8004C7FC 8E0E00F0 */  lw         $t6, 0xf0($s0)
/* 4D400 8004C800 00000000 */  nop
/* 4D404 8004C804 01C2C023 */  subu       $t8, $t6, $v0
/* 4D408 8004C808 AE1800F0 */  sw         $t8, 0xf0($s0)
.L8004C80C:
/* 4D40C 8004C80C 0C012325 */  jal        func_80048C94
/* 4D410 8004C810 2404001C */   addiu     $a0, $zero, 0x1c
/* 4D414 8004C814 8E0900F0 */  lw         $t1, 0xf0($s0)
/* 4D418 8004C818 0002C823 */  negu       $t9, $v0
/* 4D41C 8004C81C 00194040 */  sll        $t0, $t9, 1
/* 4D420 8004C820 0109082A */  slt        $at, $t0, $t1
/* 4D424 8004C824 10200007 */  beqz       $at, .L8004C844
/* 4D428 8004C828 240C004E */   addiu     $t4, $zero, 0x4e
/* 4D42C 8004C82C 0C012325 */  jal        func_80048C94
/* 4D430 8004C830 2404001C */   addiu     $a0, $zero, 0x1c
/* 4D434 8004C834 00025023 */  negu       $t2, $v0
/* 4D438 8004C838 000A5840 */  sll        $t3, $t2, 1
/* 4D43C 8004C83C AE0B00F0 */  sw         $t3, 0xf0($s0)
/* 4D440 8004C840 240C004E */  addiu      $t4, $zero, 0x4e
.L8004C844:
/* 4D444 8004C844 1000005E */  b          .L8004C9C0
/* 4D448 8004C848 AE0C0170 */   sw        $t4, 0x170($s0)
.L8004C84C:
/* 4D44C 8004C84C 860F00AE */  lh         $t7, 0xae($s0)
/* 4D450 8004C850 861800B0 */  lh         $t8, 0xb0($s0)
/* 4D454 8004C854 25EEFFFE */  addiu      $t6, $t7, -2
/* 4D458 8004C858 27190008 */  addiu      $t9, $t8, 8
/* 4D45C 8004C85C A60000E4 */  sh         $zero, 0xe4($s0)
/* 4D460 8004C860 A20000DA */  sb         $zero, 0xda($s0)
/* 4D464 8004C864 A20D00DB */  sb         $t5, 0xdb($s0)
/* 4D468 8004C868 A60E00A6 */  sh         $t6, 0xa6($s0)
/* 4D46C 8004C86C 15000017 */  bnez       $t0, .L8004C8CC
/* 4D470 8004C870 A61900A8 */   sh        $t9, 0xa8($s0)
/* 4D474 8004C874 860900AC */  lh         $t1, 0xac($s0)
/* 4D478 8004C878 A60000A2 */  sh         $zero, 0xa2($s0)
/* 4D47C 8004C87C 2404001C */  addiu      $a0, $zero, 0x1c
/* 4D480 8004C880 0C012325 */  jal        func_80048C94
/* 4D484 8004C884 A60900A4 */   sh        $t1, 0xa4($s0)
/* 4D488 8004C888 8E0A00EC */  lw         $t2, 0xec($s0)
/* 4D48C 8004C88C 00000000 */  nop
/* 4D490 8004C890 0142082A */  slt        $at, $t2, $v0
/* 4D494 8004C894 10200004 */  beqz       $at, .L8004C8A8
/* 4D498 8004C898 00000000 */   nop
/* 4D49C 8004C89C 0C012325 */  jal        func_80048C94
/* 4D4A0 8004C8A0 2404001C */   addiu     $a0, $zero, 0x1c
/* 4D4A4 8004C8A4 AE0200EC */  sw         $v0, 0xec($s0)
.L8004C8A8:
/* 4D4A8 8004C8A8 8E0B0080 */  lw         $t3, 0x80($s0)
/* 4D4AC 8004C8AC 240D0047 */  addiu      $t5, $zero, 0x47
/* 4D4B0 8004C8B0 316C0020 */  andi       $t4, $t3, 0x20
/* 4D4B4 8004C8B4 15800003 */  bnez       $t4, .L8004C8C4
/* 4D4B8 8004C8B8 240F004A */   addiu     $t7, $zero, 0x4a
/* 4D4BC 8004C8BC 10000019 */  b          .L8004C924
/* 4D4C0 8004C8C0 AE0D0170 */   sw        $t5, 0x170($s0)
.L8004C8C4:
/* 4D4C4 8004C8C4 10000017 */  b          .L8004C924
/* 4D4C8 8004C8C8 AE0F0170 */   sw        $t7, 0x170($s0)
.L8004C8CC:
/* 4D4CC 8004C8CC 860E00AA */  lh         $t6, 0xaa($s0)
/* 4D4D0 8004C8D0 A60000A4 */  sh         $zero, 0xa4($s0)
/* 4D4D4 8004C8D4 2404001C */  addiu      $a0, $zero, 0x1c
/* 4D4D8 8004C8D8 0C012325 */  jal        func_80048C94
/* 4D4DC 8004C8DC A60E00A2 */   sh        $t6, 0xa2($s0)
/* 4D4E0 8004C8E0 8E1900EC */  lw         $t9, 0xec($s0)
/* 4D4E4 8004C8E4 0002C023 */  negu       $t8, $v0
/* 4D4E8 8004C8E8 0319082A */  slt        $at, $t8, $t9
/* 4D4EC 8004C8EC 10200005 */  beqz       $at, .L8004C904
/* 4D4F0 8004C8F0 00000000 */   nop
/* 4D4F4 8004C8F4 0C012325 */  jal        func_80048C94
/* 4D4F8 8004C8F8 2404001C */   addiu     $a0, $zero, 0x1c
/* 4D4FC 8004C8FC 00024023 */  negu       $t0, $v0
/* 4D500 8004C900 AE0800EC */  sw         $t0, 0xec($s0)
.L8004C904:
/* 4D504 8004C904 8E090080 */  lw         $t1, 0x80($s0)
/* 4D508 8004C908 240B004A */  addiu      $t3, $zero, 0x4a
/* 4D50C 8004C90C 312A0020 */  andi       $t2, $t1, 0x20
/* 4D510 8004C910 15400003 */  bnez       $t2, .L8004C920
/* 4D514 8004C914 240C0047 */   addiu     $t4, $zero, 0x47
/* 4D518 8004C918 10000002 */  b          .L8004C924
/* 4D51C 8004C91C AE0B0170 */   sw        $t3, 0x170($s0)
.L8004C920:
/* 4D520 8004C920 AE0C0170 */  sw         $t4, 0x170($s0)
.L8004C924:
/* 4D524 8004C924 0C012325 */  jal        func_80048C94
/* 4D528 8004C928 2404000F */   addiu     $a0, $zero, 0xf
/* 4D52C 8004C92C 44828000 */  mtc1       $v0, $f16
/* 4D530 8004C930 3C013FF8 */  lui        $at, 0x3ff8
/* 4D534 8004C934 468081A1 */  cvt.d.w    $f6, $f16
/* 4D538 8004C938 44810800 */  mtc1       $at, $f1
/* 4D53C 8004C93C 44800000 */  mtc1       $zero, $f0
/* 4D540 8004C940 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 4D544 8004C944 46203482 */  mul.d      $f18, $f6, $f0
/* 4D548 8004C948 44832000 */  mtc1       $v1, $f4
/* 4D54C 8004C94C 00000000 */  nop
/* 4D550 8004C950 46802221 */  cvt.d.w    $f8, $f4
/* 4D554 8004C954 4628903C */  c.lt.d     $f18, $f8
/* 4D558 8004C958 00000000 */  nop
/* 4D55C 8004C95C 45000015 */  bc1f       .L8004C9B4
/* 4D560 8004C960 00000000 */   nop
/* 4D564 8004C964 0C012325 */  jal        func_80048C94
/* 4D568 8004C968 2404000F */   addiu     $a0, $zero, 0xf
/* 4D56C 8004C96C 44825000 */  mtc1       $v0, $f10
/* 4D570 8004C970 3C013FF8 */  lui        $at, 0x3ff8
/* 4D574 8004C974 46805421 */  cvt.d.w    $f16, $f10
/* 4D578 8004C978 44810800 */  mtc1       $at, $f1
/* 4D57C 8004C97C 44800000 */  mtc1       $zero, $f0
/* 4D580 8004C980 00000000 */  nop
/* 4D584 8004C984 46208182 */  mul.d      $f6, $f16, $f0
/* 4D588 8004C988 444DF800 */  cfc1       $t5, $31
/* 4D58C 8004C98C 00000000 */  nop
/* 4D590 8004C990 35A10003 */  ori        $at, $t5, 3
/* 4D594 8004C994 38210002 */  xori       $at, $at, 2
/* 4D598 8004C998 44C1F800 */  ctc1       $at, $31
/* 4D59C 8004C99C 00000000 */  nop
/* 4D5A0 8004C9A0 46203124 */  cvt.w.d    $f4, $f6
/* 4D5A4 8004C9A4 E60400F0 */  swc1       $f4, 0xf0($s0)
/* 4D5A8 8004C9A8 44CDF800 */  ctc1       $t5, $31
/* 4D5AC 8004C9AC 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 4D5B0 8004C9B0 00000000 */  nop
.L8004C9B4:
/* 4D5B4 8004C9B4 04610003 */  bgez       $v1, .L8004C9C4
/* 4D5B8 8004C9B8 97A40032 */   lhu       $a0, 0x32($sp)
/* 4D5BC 8004C9BC AE0000F0 */  sw         $zero, 0xf0($s0)
.L8004C9C0:
/* 4D5C0 8004C9C0 97A40032 */  lhu        $a0, 0x32($sp)
.L8004C9C4:
/* 4D5C4 8004C9C4 0C017026 */  jal        func_8005C098
/* 4D5C8 8004C9C8 24050001 */   addiu     $a1, $zero, 1
/* 4D5CC 8004C9CC 8E0E0080 */  lw         $t6, 0x80($s0)
/* 4D5D0 8004C9D0 3C028013 */  lui        $v0, %hi(D_801373F0)
/* 4D5D4 8004C9D4 3C01FF3C */  lui        $at, 0xff3c
/* 4D5D8 8004C9D8 804273F0 */  lb         $v0, %lo(D_801373F0)($v0)
/* 4D5DC 8004C9DC 3421FFFF */  ori        $at, $at, 0xffff
/* 4D5E0 8004C9E0 01C1C024 */  and        $t8, $t6, $at
/* 4D5E4 8004C9E4 3C010002 */  lui        $at, 2
/* 4D5E8 8004C9E8 920900D1 */  lbu        $t1, 0xd1($s0)
/* 4D5EC 8004C9EC 03014025 */  or         $t0, $t8, $at
/* 4D5F0 8004C9F0 AE00017C */  sw         $zero, 0x17c($s0)
/* 4D5F4 8004C9F4 240F0002 */  addiu      $t7, $zero, 2
/* 4D5F8 8004C9F8 AE180080 */  sw         $t8, 0x80($s0)
/* 4D5FC 8004C9FC 24010011 */  addiu      $at, $zero, 0x11
/* 4D600 8004CA00 A20F017D */  sb         $t7, 0x17d($s0)
/* 4D604 8004CA04 AE080080 */  sw         $t0, 0x80($s0)
/* 4D608 8004CA08 A2020182 */  sb         $v0, 0x182($s0)
/* 4D60C 8004CA0C 15210008 */  bne        $t1, $at, .L8004CA30
/* 4D610 8004CA10 AE02015C */   sw        $v0, 0x15c($s0)
/* 4D614 8004CA14 920A012E */  lbu        $t2, 0x12e($s0)
/* 4D618 8004CA18 8E0C00F8 */  lw         $t4, 0xf8($s0)
/* 4D61C 8004CA1C 8E0D00FC */  lw         $t5, 0xfc($s0)
/* 4D620 8004CA20 354B0040 */  ori        $t3, $t2, 0x40
/* 4D624 8004CA24 A20B012E */  sb         $t3, 0x12e($s0)
/* 4D628 8004CA28 AE0C00EC */  sw         $t4, 0xec($s0)
/* 4D62C 8004CA2C AE0D00F0 */  sw         $t5, 0xf0($s0)
.L8004CA30:
/* 4D630 8004CA30 0C000CD3 */  jal        SFX_Play_1
/* 4D634 8004CA34 24040081 */   addiu     $a0, $zero, 0x81
/* 4D638 8004CA38 100000E0 */  b          .L8004CDBC
/* 4D63C 8004CA3C 97A40032 */   lhu       $a0, 0x32($sp)
.L8004CA40:
/* 4D640 8004CA40 920F00D1 */  lbu        $t7, 0xd1($s0)
/* 4D644 8004CA44 24010010 */  addiu      $at, $zero, 0x10
/* 4D648 8004CA48 15E10099 */  bne        $t7, $at, .L8004CCB0
/* 4D64C 8004CA4C 00000000 */   nop
/* 4D650 8004CA50 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4D654 8004CA54 8E060158 */  lw         $a2, 0x158($s0)
/* 4D658 8004CA58 0C00A607 */  jal        func_8002981C
/* 4D65C 8004CA5C 3C05FFFA */   lui       $a1, 0xfffa
/* 4D660 8004CA60 8E0400EC */  lw         $a0, 0xec($s0)
/* 4D664 8004CA64 0C0171B4 */  jal        func_8005C6D0
/* 4D668 8004CA68 AE0200F0 */   sw        $v0, 0xf0($s0)
/* 4D66C 8004CA6C 2404001C */  addiu      $a0, $zero, 0x1c
/* 4D670 8004CA70 0C012325 */  jal        func_80048C94
/* 4D674 8004CA74 AFA20024 */   sw        $v0, 0x24($sp)
/* 4D678 8004CA78 8FA30024 */  lw         $v1, 0x24($sp)
/* 4D67C 8004CA7C 00002825 */  or         $a1, $zero, $zero
/* 4D680 8004CA80 0043082A */  slt        $at, $v0, $v1
/* 4D684 8004CA84 10200005 */  beqz       $at, .L8004CA9C
/* 4D688 8004CA88 00000000 */   nop
/* 4D68C 8004CA8C 8E0400EC */  lw         $a0, 0xec($s0)
/* 4D690 8004CA90 0C00A607 */  jal        func_8002981C
/* 4D694 8004CA94 24062000 */   addiu     $a2, $zero, 0x2000
/* 4D698 8004CA98 AE0200EC */  sw         $v0, 0xec($s0)
.L8004CA9C:
/* 4D69C 8004CA9C 0C012325 */  jal        func_80048C94
/* 4D6A0 8004CAA0 24040013 */   addiu     $a0, $zero, 0x13
/* 4D6A4 8004CAA4 AFA20020 */  sw         $v0, 0x20($sp)
/* 4D6A8 8004CAA8 0C012325 */  jal        func_80048C94
/* 4D6AC 8004CAAC 24040013 */   addiu     $a0, $zero, 0x13
/* 4D6B0 8004CAB0 8E040158 */  lw         $a0, 0x158($s0)
/* 4D6B4 8004CAB4 8FA50020 */  lw         $a1, 0x20($sp)
/* 4D6B8 8004CAB8 04410003 */  bgez       $v0, .L8004CAC8
/* 4D6BC 8004CABC 00023103 */   sra       $a2, $v0, 4
/* 4D6C0 8004CAC0 2441000F */  addiu      $at, $v0, 0xf
/* 4D6C4 8004CAC4 00013103 */  sra        $a2, $at, 4
.L8004CAC8:
/* 4D6C8 8004CAC8 0C00A607 */  jal        func_8002981C
/* 4D6CC 8004CACC 00000000 */   nop
/* 4D6D0 8004CAD0 97A40032 */  lhu        $a0, 0x32($sp)
/* 4D6D4 8004CAD4 0C0174CE */  jal        func_8005D338
/* 4D6D8 8004CAD8 AE020158 */   sw        $v0, 0x158($s0)
/* 4D6DC 8004CADC 24010027 */  addiu      $at, $zero, 0x27
/* 4D6E0 8004CAE0 10410007 */  beq        $v0, $at, .L8004CB00
/* 4D6E4 8004CAE4 00000000 */   nop
/* 4D6E8 8004CAE8 97A40032 */  lhu        $a0, 0x32($sp)
/* 4D6EC 8004CAEC 0C017506 */  jal        func_8005D418
/* 4D6F0 8004CAF0 00000000 */   nop
/* 4D6F4 8004CAF4 10400002 */  beqz       $v0, .L8004CB00
/* 4D6F8 8004CAF8 240E0027 */   addiu     $t6, $zero, 0x27
/* 4D6FC 8004CAFC AE0E0170 */  sw         $t6, 0x170($s0)
.L8004CB00:
/* 4D700 8004CB00 8E180150 */  lw         $t8, 0x150($s0)
/* 4D704 8004CB04 3C014010 */  lui        $at, 0x4010
/* 4D708 8004CB08 44989000 */  mtc1       $t8, $f18
/* 4D70C 8004CB0C 44815800 */  mtc1       $at, $f11
/* 4D710 8004CB10 46809221 */  cvt.d.w    $f8, $f18
/* 4D714 8004CB14 44805000 */  mtc1       $zero, $f10
/* 4D718 8004CB18 24010008 */  addiu      $at, $zero, 8
/* 4D71C 8004CB1C 462A403C */  c.lt.d     $f8, $f10
/* 4D720 8004CB20 00000000 */  nop
/* 4D724 8004CB24 45000005 */  bc1f       .L8004CB3C
/* 4D728 8004CB28 00000000 */   nop
/* 4D72C 8004CB2C 9619012C */  lhu        $t9, 0x12c($s0)
/* 4D730 8004CB30 00000000 */  nop
/* 4D734 8004CB34 37280004 */  ori        $t0, $t9, 4
/* 4D738 8004CB38 A608012C */  sh         $t0, 0x12c($s0)
.L8004CB3C:
/* 4D73C 8004CB3C 8E02015C */  lw         $v0, 0x15c($s0)
/* 4D740 8004CB40 00000000 */  nop
/* 4D744 8004CB44 14400010 */  bnez       $v0, .L8004CB88
/* 4D748 8004CB48 00000000 */   nop
/* 4D74C 8004CB4C 0C012325 */  jal        func_80048C94
/* 4D750 8004CB50 00002025 */   or        $a0, $zero, $zero
/* 4D754 8004CB54 8E0400EC */  lw         $a0, 0xec($s0)
/* 4D758 8004CB58 00002825 */  or         $a1, $zero, $zero
/* 4D75C 8004CB5C 04410003 */  bgez       $v0, .L8004CB6C
/* 4D760 8004CB60 00023043 */   sra       $a2, $v0, 1
/* 4D764 8004CB64 24410001 */  addiu      $at, $v0, 1
/* 4D768 8004CB68 00013043 */  sra        $a2, $at, 1
.L8004CB6C:
/* 4D76C 8004CB6C 0C00A607 */  jal        func_8002981C
/* 4D770 8004CB70 00000000 */   nop
/* 4D774 8004CB74 9609012C */  lhu        $t1, 0x12c($s0)
/* 4D778 8004CB78 AE0200EC */  sw         $v0, 0xec($s0)
/* 4D77C 8004CB7C 352A0008 */  ori        $t2, $t1, 8
/* 4D780 8004CB80 1000004B */  b          .L8004CCB0
/* 4D784 8004CB84 A60A012C */   sh        $t2, 0x12c($s0)
.L8004CB88:
/* 4D788 8004CB88 10410049 */  beq        $v0, $at, .L8004CCB0
/* 4D78C 8004CB8C 00000000 */   nop
/* 4D790 8004CB90 8E0B0150 */  lw         $t3, 0x150($s0)
/* 4D794 8004CB94 00000000 */  nop
/* 4D798 8004CB98 29610009 */  slti       $at, $t3, 9
/* 4D79C 8004CB9C 14200044 */  bnez       $at, .L8004CCB0
/* 4D7A0 8004CBA0 00000000 */   nop
/* 4D7A4 8004CBA4 8E0400EC */  lw         $a0, 0xec($s0)
/* 4D7A8 8004CBA8 0C0171B4 */  jal        func_8005C6D0
/* 4D7AC 8004CBAC 00000000 */   nop
/* 4D7B0 8004CBB0 3C010002 */  lui        $at, 2
/* 4D7B4 8004CBB4 34218000 */  ori        $at, $at, 0x8000
/* 4D7B8 8004CBB8 0041082A */  slt        $at, $v0, $at
/* 4D7BC 8004CBBC 1420003C */  bnez       $at, .L8004CCB0
/* 4D7C0 8004CBC0 00000000 */   nop
/* 4D7C4 8004CBC4 860400A2 */  lh         $a0, 0xa2($s0)
/* 4D7C8 8004CBC8 0C0171B4 */  jal        func_8005C6D0
/* 4D7CC 8004CBCC 00000000 */   nop
/* 4D7D0 8004CBD0 860400A4 */  lh         $a0, 0xa4($s0)
/* 4D7D4 8004CBD4 0C0171B4 */  jal        func_8005C6D0
/* 4D7D8 8004CBD8 AFA20024 */   sw        $v0, 0x24($sp)
/* 4D7DC 8004CBDC 8FA30024 */  lw         $v1, 0x24($sp)
/* 4D7E0 8004CBE0 00000000 */  nop
/* 4D7E4 8004CBE4 0062082A */  slt        $at, $v1, $v0
/* 4D7E8 8004CBE8 10200009 */  beqz       $at, .L8004CC10
/* 4D7EC 8004CBEC 00000000 */   nop
/* 4D7F0 8004CBF0 860C00A4 */  lh         $t4, 0xa4($s0)
/* 4D7F4 8004CBF4 860D0088 */  lh         $t5, 0x88($s0)
/* 4D7F8 8004CBF8 00000000 */  nop
/* 4D7FC 8004CBFC 018D2021 */  addu       $a0, $t4, $t5
/* 4D800 8004CC00 24840001 */  addiu      $a0, $a0, 1
/* 4D804 8004CC04 00047C00 */  sll        $t7, $a0, 0x10
/* 4D808 8004CC08 10000008 */  b          .L8004CC2C
/* 4D80C 8004CC0C 000F2403 */   sra       $a0, $t7, 0x10
.L8004CC10:
/* 4D810 8004CC10 861800A2 */  lh         $t8, 0xa2($s0)
/* 4D814 8004CC14 86190088 */  lh         $t9, 0x88($s0)
/* 4D818 8004CC18 00000000 */  nop
/* 4D81C 8004CC1C 03192021 */  addu       $a0, $t8, $t9
/* 4D820 8004CC20 2484FFFF */  addiu      $a0, $a0, -1
/* 4D824 8004CC24 00044400 */  sll        $t0, $a0, 0x10
/* 4D828 8004CC28 00082403 */  sra        $a0, $t0, 0x10
.L8004CC2C:
/* 4D82C 8004CC2C 8605008C */  lh         $a1, 0x8c($s0)
/* 4D830 8004CC30 0C004AAD */  jal        func_80012AB4
/* 4D834 8004CC34 00000000 */   nop
/* 4D838 8004CC38 304A0080 */  andi       $t2, $v0, 0x80
/* 4D83C 8004CC3C 11400018 */  beqz       $t2, .L8004CCA0
/* 4D840 8004CC40 00000000 */   nop
/* 4D844 8004CC44 8E0B00EC */  lw         $t3, 0xec($s0)
/* 4D848 8004CC48 3C013FE8 */  lui        $at, 0x3fe8
/* 4D84C 8004CC4C 000B6023 */  negu       $t4, $t3
/* 4D850 8004CC50 448C8000 */  mtc1       $t4, $f16
/* 4D854 8004CC54 44812800 */  mtc1       $at, $f5
/* 4D858 8004CC58 468081A1 */  cvt.d.w    $f6, $f16
/* 4D85C 8004CC5C 44802000 */  mtc1       $zero, $f4
/* 4D860 8004CC60 8E0F0150 */  lw         $t7, 0x150($s0)
/* 4D864 8004CC64 46243482 */  mul.d      $f18, $f6, $f4
/* 4D868 8004CC68 24180003 */  addiu      $t8, $zero, 3
/* 4D86C 8004CC6C 24190011 */  addiu      $t9, $zero, 0x11
/* 4D870 8004CC70 25EE0010 */  addiu      $t6, $t7, 0x10
/* 4D874 8004CC74 AE0E0150 */  sw         $t6, 0x150($s0)
/* 4D878 8004CC78 444DF800 */  cfc1       $t5, $31
/* 4D87C 8004CC7C A21800D0 */  sb         $t8, 0xd0($s0)
/* 4D880 8004CC80 35A10003 */  ori        $at, $t5, 3
/* 4D884 8004CC84 38210002 */  xori       $at, $at, 2
/* 4D888 8004CC88 44C1F800 */  ctc1       $at, $31
/* 4D88C 8004CC8C A21900D1 */  sb         $t9, 0xd1($s0)
/* 4D890 8004CC90 46209224 */  cvt.w.d    $f8, $f18
/* 4D894 8004CC94 44CDF800 */  ctc1       $t5, $31
/* 4D898 8004CC98 1000005C */  b          .L8004CE0C
/* 4D89C 8004CC9C E60800EC */   swc1      $f8, 0xec($s0)
.L8004CCA0:
/* 4D8A0 8004CCA0 8E080080 */  lw         $t0, 0x80($s0)
/* 4D8A4 8004CCA4 00000000 */  nop
/* 4D8A8 8004CCA8 35090080 */  ori        $t1, $t0, 0x80
/* 4D8AC 8004CCAC AE090080 */  sw         $t1, 0x80($s0)
.L8004CCB0:
/* 4D8B0 8004CCB0 920A00D1 */  lbu        $t2, 0xd1($s0)
/* 4D8B4 8004CCB4 24010011 */  addiu      $at, $zero, 0x11
/* 4D8B8 8004CCB8 15410037 */  bne        $t2, $at, .L8004CD98
/* 4D8BC 8004CCBC 00000000 */   nop
/* 4D8C0 8004CCC0 0C012325 */  jal        func_80048C94
/* 4D8C4 8004CCC4 00002025 */   or        $a0, $zero, $zero
/* 4D8C8 8004CCC8 920B00D0 */  lbu        $t3, 0xd0($s0)
/* 4D8CC 8004CCCC 24010002 */  addiu      $at, $zero, 2
/* 4D8D0 8004CCD0 15610002 */  bne        $t3, $at, .L8004CCDC
/* 4D8D4 8004CCD4 00403825 */   or        $a3, $v0, $zero
/* 4D8D8 8004CCD8 00023880 */  sll        $a3, $v0, 2
.L8004CCDC:
/* 4D8DC 8004CCDC 8E0400EC */  lw         $a0, 0xec($s0)
/* 4D8E0 8004CCE0 00002825 */  or         $a1, $zero, $zero
/* 4D8E4 8004CCE4 00E03025 */  or         $a2, $a3, $zero
/* 4D8E8 8004CCE8 0C00A607 */  jal        func_8002981C
/* 4D8EC 8004CCEC AFA70028 */   sw        $a3, 0x28($sp)
/* 4D8F0 8004CCF0 920C00D0 */  lbu        $t4, 0xd0($s0)
/* 4D8F4 8004CCF4 8FA70028 */  lw         $a3, 0x28($sp)
/* 4D8F8 8004CCF8 24010003 */  addiu      $at, $zero, 3
/* 4D8FC 8004CCFC 1581000D */  bne        $t4, $at, .L8004CD34
/* 4D900 8004CD00 AE0200EC */   sw        $v0, 0xec($s0)
/* 4D904 8004CD04 0C012325 */  jal        func_80048C94
/* 4D908 8004CD08 24040013 */   addiu     $a0, $zero, 0x13
/* 4D90C 8004CD0C 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4D910 8004CD10 3C05FFFA */  lui        $a1, 0xfffa
/* 4D914 8004CD14 04410003 */  bgez       $v0, .L8004CD24
/* 4D918 8004CD18 00023043 */   sra       $a2, $v0, 1
/* 4D91C 8004CD1C 24410001 */  addiu      $at, $v0, 1
/* 4D920 8004CD20 00013043 */  sra        $a2, $at, 1
.L8004CD24:
/* 4D924 8004CD24 0C00A607 */  jal        func_8002981C
/* 4D928 8004CD28 00000000 */   nop
/* 4D92C 8004CD2C 10000006 */  b          .L8004CD48
/* 4D930 8004CD30 AE0200F0 */   sw        $v0, 0xf0($s0)
.L8004CD34:
/* 4D934 8004CD34 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4D938 8004CD38 00002825 */  or         $a1, $zero, $zero
/* 4D93C 8004CD3C 0C00A607 */  jal        func_8002981C
/* 4D940 8004CD40 00073040 */   sll       $a2, $a3, 1
/* 4D944 8004CD44 AE0200F0 */  sw         $v0, 0xf0($s0)
.L8004CD48:
/* 4D948 8004CD48 8E0D0150 */  lw         $t5, 0x150($s0)
/* 4D94C 8004CD4C 3C014028 */  lui        $at, 0x4028
/* 4D950 8004CD50 448D5000 */  mtc1       $t5, $f10
/* 4D954 8004CD54 44813800 */  mtc1       $at, $f7
/* 4D958 8004CD58 46805421 */  cvt.d.w    $f16, $f10
/* 4D95C 8004CD5C 44803000 */  mtc1       $zero, $f6
/* 4D960 8004CD60 00000000 */  nop
/* 4D964 8004CD64 4626803C */  c.lt.d     $f16, $f6
/* 4D968 8004CD68 00000000 */  nop
/* 4D96C 8004CD6C 45000006 */  bc1f       .L8004CD88
/* 4D970 8004CD70 00000000 */   nop
/* 4D974 8004CD74 960F012C */  lhu        $t7, 0x12c($s0)
/* 4D978 8004CD78 00000000 */  nop
/* 4D97C 8004CD7C 35EE0004 */  ori        $t6, $t7, 4
/* 4D980 8004CD80 10000005 */  b          .L8004CD98
/* 4D984 8004CD84 A60E012C */   sh        $t6, 0x12c($s0)
.L8004CD88:
/* 4D988 8004CD88 9218012E */  lbu        $t8, 0x12e($s0)
/* 4D98C 8004CD8C 00000000 */  nop
/* 4D990 8004CD90 37190040 */  ori        $t9, $t8, 0x40
/* 4D994 8004CD94 A219012E */  sb         $t9, 0x12e($s0)
.L8004CD98:
/* 4D998 8004CD98 8E080150 */  lw         $t0, 0x150($s0)
/* 4D99C 8004CD9C 240B0002 */  addiu      $t3, $zero, 2
/* 4D9A0 8004CDA0 2509FFFF */  addiu      $t1, $t0, -1
/* 4D9A4 8004CDA4 15200004 */  bnez       $t1, .L8004CDB8
/* 4D9A8 8004CDA8 AE090150 */   sw        $t1, 0x150($s0)
/* 4D9AC 8004CDAC 240C0016 */  addiu      $t4, $zero, 0x16
/* 4D9B0 8004CDB0 A20B00D0 */  sb         $t3, 0xd0($s0)
/* 4D9B4 8004CDB4 A20C00D1 */  sb         $t4, 0xd1($s0)
.L8004CDB8:
/* 4D9B8 8004CDB8 97A40032 */  lhu        $a0, 0x32($sp)
.L8004CDBC:
/* 4D9BC 8004CDBC 0C0174CE */  jal        func_8005D338
/* 4D9C0 8004CDC0 00000000 */   nop
/* 4D9C4 8004CDC4 24010027 */  addiu      $at, $zero, 0x27
/* 4D9C8 8004CDC8 10410011 */  beq        $v0, $at, .L8004CE10
/* 4D9CC 8004CDCC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4D9D0 8004CDD0 820D0170 */  lb         $t5, 0x170($s0)
/* 4D9D4 8004CDD4 00000000 */  nop
/* 4D9D8 8004CDD8 15A0000D */  bnez       $t5, .L8004CE10
/* 4D9DC 8004CDDC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4D9E0 8004CDE0 82020171 */  lb         $v0, 0x171($s0)
/* 4D9E4 8004CDE4 24010003 */  addiu      $at, $zero, 3
/* 4D9E8 8004CDE8 10400004 */  beqz       $v0, .L8004CDFC
/* 4D9EC 8004CDEC 00000000 */   nop
/* 4D9F0 8004CDF0 10410002 */  beq        $v0, $at, .L8004CDFC
/* 4D9F4 8004CDF4 24010005 */   addiu     $at, $zero, 5
/* 4D9F8 8004CDF8 14410004 */  bne        $v0, $at, .L8004CE0C
.L8004CDFC:
/* 4D9FC 8004CDFC 3C018013 */   lui       $at, %hi(D_801370D2)
/* 4DA00 8004CE00 97A40032 */  lhu        $a0, 0x32($sp)
/* 4DA04 8004CE04 0C017094 */  jal        func_8005C250
/* 4DA08 8004CE08 A42070D2 */   sh        $zero, %lo(D_801370D2)($at)
.L8004CE0C:
/* 4DA0C 8004CE0C 8FBF001C */  lw         $ra, 0x1c($sp)
.L8004CE10:
/* 4DA10 8004CE10 8FB00018 */  lw         $s0, 0x18($sp)
/* 4DA14 8004CE14 03E00008 */  jr         $ra
/* 4DA18 8004CE18 27BD0030 */   addiu     $sp, $sp, 0x30
