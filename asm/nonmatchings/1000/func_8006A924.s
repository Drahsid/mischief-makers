glabel func_8006A924
/* 6B524 8006A924 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6B528 8006A928 24070198 */  addiu      $a3, $zero, 0x198
/* 6B52C 8006A92C 01C70019 */  multu      $t6, $a3
/* 6B530 8006A930 3C06800F */  lui        $a2, %hi(gActors)
/* 6B534 8006A934 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 6B538 8006A938 AFA40000 */  sw         $a0, ($sp)
/* 6B53C 8006A93C 01C02025 */  or         $a0, $t6, $zero
/* 6B540 8006A940 240E0100 */  addiu      $t6, $zero, 0x100
/* 6B544 8006A944 00007812 */  mflo       $t7
/* 6B548 8006A948 00CF1021 */  addu       $v0, $a2, $t7
/* 6B54C 8006A94C 944300D6 */  lhu        $v1, 0xd6($v0)
/* 6B550 8006A950 00000000 */  nop
/* 6B554 8006A954 00670019 */  multu      $v1, $a3
/* 6B558 8006A958 0000C012 */  mflo       $t8
/* 6B55C 8006A95C 00D82821 */  addu       $a1, $a2, $t8
/* 6B560 8006A960 84B900E0 */  lh         $t9, 0xe0($a1)
/* 6B564 8006A964 00000000 */  nop
/* 6B568 8006A968 13200016 */  beqz       $t9, .L8006A9C4
/* 6B56C 8006A96C 00000000 */   nop
/* 6B570 8006A970 8CA80080 */  lw         $t0, 0x80($a1)
/* 6B574 8006A974 00000000 */  nop
/* 6B578 8006A978 31090002 */  andi       $t1, $t0, 2
/* 6B57C 8006A97C 11200011 */  beqz       $t1, .L8006A9C4
/* 6B580 8006A980 00000000 */   nop
/* 6B584 8006A984 8CA300EC */  lw         $v1, 0xec($a1)
/* 6B588 8006A988 00000000 */  nop
/* 6B58C 8006A98C 04610006 */  bgez       $v1, .L8006A9A8
/* 6B590 8006A990 00000000 */   nop
/* 6B594 8006A994 8C4A0098 */  lw         $t2, 0x98($v0)
/* 6B598 8006A998 00000000 */  nop
/* 6B59C 8006A99C 314B0004 */  andi       $t3, $t2, 4
/* 6B5A0 8006A9A0 15600008 */  bnez       $t3, .L8006A9C4
/* 6B5A4 8006A9A4 00000000 */   nop
.L8006A9A8:
/* 6B5A8 8006A9A8 18600008 */  blez       $v1, .L8006A9CC
/* 6B5AC 8006A9AC 00000000 */   nop
/* 6B5B0 8006A9B0 8C4C0098 */  lw         $t4, 0x98($v0)
/* 6B5B4 8006A9B4 00000000 */  nop
/* 6B5B8 8006A9B8 318D0008 */  andi       $t5, $t4, 8
/* 6B5BC 8006A9BC 11A00003 */  beqz       $t5, .L8006A9CC
/* 6B5C0 8006A9C0 00000000 */   nop
.L8006A9C4:
/* 6B5C4 8006A9C4 03E00008 */  jr         $ra
/* 6B5C8 8006A9C8 A44E00D0 */   sh        $t6, 0xd0($v0)
.L8006A9CC:
/* 6B5CC 8006A9CC 8CAF00F0 */  lw         $t7, 0xf0($a1)
/* 6B5D0 8006A9D0 3C014100 */  lui        $at, 0x4100
/* 6B5D4 8006A9D4 05E1000C */  bgez       $t7, .L8006AA08
/* 6B5D8 8006A9D8 00000000 */   nop
/* 6B5DC 8006A9DC 8C580098 */  lw         $t8, 0x98($v0)
/* 6B5E0 8006A9E0 24080150 */  addiu      $t0, $zero, 0x150
/* 6B5E4 8006A9E4 33190020 */  andi       $t9, $t8, 0x20
/* 6B5E8 8006A9E8 13200007 */  beqz       $t9, .L8006AA08
/* 6B5EC 8006A9EC 3C09800E */   lui       $t1, %hi(D_800E1C2C)
/* 6B5F0 8006A9F0 25291C2C */  addiu      $t1, $t1, %lo(D_800E1C2C)
/* 6B5F4 8006A9F4 240A0001 */  addiu      $t2, $zero, 1
/* 6B5F8 8006A9F8 A44800D0 */  sh         $t0, 0xd0($v0)
/* 6B5FC 8006A9FC AC4900E8 */  sw         $t1, 0xe8($v0)
/* 6B600 8006AA00 03E00008 */  jr         $ra
/* 6B604 8006AA04 A44A00E6 */   sh        $t2, 0xe6($v0)
.L8006AA08:
/* 6B608 8006AA08 8CAB0098 */  lw         $t3, 0x98($a1)
/* 6B60C 8006AA0C A4A400D6 */  sh         $a0, 0xd6($a1)
/* 6B610 8006AA10 356C0200 */  ori        $t4, $t3, 0x200
/* 6B614 8006AA14 ACAC0098 */  sw         $t4, 0x98($a1)
/* 6B618 8006AA18 8C4D0158 */  lw         $t5, 0x158($v0)
/* 6B61C 8006AA1C 84AE0088 */  lh         $t6, 0x88($a1)
/* 6B620 8006AA20 844900AE */  lh         $t1, 0xae($v0)
/* 6B624 8006AA24 01AE7821 */  addu       $t7, $t5, $t6
/* 6B628 8006AA28 A44F0088 */  sh         $t7, 0x88($v0)
/* 6B62C 8006AA2C 84B900B0 */  lh         $t9, 0xb0($a1)
/* 6B630 8006AA30 84B8008C */  lh         $t8, 0x8c($a1)
/* 6B634 8006AA34 C44800B4 */  lwc1       $f8, 0xb4($v0)
/* 6B638 8006AA38 03194021 */  addu       $t0, $t8, $t9
/* 6B63C 8006AA3C 44815000 */  mtc1       $at, $f10
/* 6B640 8006AA40 01095023 */  subu       $t2, $t0, $t1
/* 6B644 8006AA44 448A2000 */  mtc1       $t2, $f4
/* 6B648 8006AA48 460A4402 */  mul.s      $f16, $f8, $f10
/* 6B64C 8006AA4C 8C4F0080 */  lw         $t7, 0x80($v0)
/* 6B650 8006AA50 00001825 */  or         $v1, $zero, $zero
/* 6B654 8006AA54 31F80020 */  andi       $t8, $t7, 0x20
/* 6B658 8006AA58 468021A0 */  cvt.s.w    $f6, $f4
/* 6B65C 8006AA5C 46103481 */  sub.s      $f18, $f6, $f16
/* 6B660 8006AA60 444BF800 */  cfc1       $t3, $31
/* 6B664 8006AA64 00000000 */  nop
/* 6B668 8006AA68 35610003 */  ori        $at, $t3, 3
/* 6B66C 8006AA6C 38210002 */  xori       $at, $at, 2
/* 6B670 8006AA70 44C1F800 */  ctc1       $at, $31
/* 6B674 8006AA74 3C01FFFF */  lui        $at, 0xffff
/* 6B678 8006AA78 46009124 */  cvt.w.s    $f4, $f18
/* 6B67C 8006AA7C 34210001 */  ori        $at, $at, 1
/* 6B680 8006AA80 440C2000 */  mfc1       $t4, $f4
/* 6B684 8006AA84 44CBF800 */  ctc1       $t3, $31
/* 6B688 8006AA88 A44C008C */  sh         $t4, 0x8c($v0)
/* 6B68C 8006AA8C 8CAD0090 */  lw         $t5, 0x90($a1)
/* 6B690 8006AA90 00000000 */  nop
/* 6B694 8006AA94 25AE0001 */  addiu      $t6, $t5, 1
/* 6B698 8006AA98 AC4E0090 */  sw         $t6, 0x90($v0)
/* 6B69C 8006AA9C 8CA600EC */  lw         $a2, 0xec($a1)
/* 6B6A0 8006AAA0 13000002 */  beqz       $t8, .L8006AAAC
/* 6B6A4 8006AAA4 00000000 */   nop
/* 6B6A8 8006AAA8 00063023 */  negu       $a2, $a2
.L8006AAAC:
/* 6B6AC 8006AAAC 00C1082A */  slt        $at, $a2, $at
/* 6B6B0 8006AAB0 10200009 */  beqz       $at, .L8006AAD8
/* 6B6B4 8006AAB4 3C010001 */   lui       $at, 1
/* 6B6B8 8006AAB8 8C59015C */  lw         $t9, 0x15c($v0)
/* 6B6BC 8006AABC 3C010002 */  lui        $at, 2
/* 6B6C0 8006AAC0 03214021 */  addu       $t0, $t9, $at
/* 6B6C4 8006AAC4 24030001 */  addiu      $v1, $zero, 1
/* 6B6C8 8006AAC8 AC48015C */  sw         $t0, 0x15c($v0)
/* 6B6CC 8006AACC 1000001A */  b          .L8006AB38
/* 6B6D0 8006AAD0 AC400160 */   sw        $zero, 0x160($v0)
/* 6B6D4 8006AAD4 3C010001 */  lui        $at, 1
.L8006AAD8:
/* 6B6D8 8006AAD8 00C1082A */  slt        $at, $a2, $at
/* 6B6DC 8006AADC 14200008 */  bnez       $at, .L8006AB00
/* 6B6E0 8006AAE0 240B0001 */   addiu     $t3, $zero, 1
/* 6B6E4 8006AAE4 8C49015C */  lw         $t1, 0x15c($v0)
/* 6B6E8 8006AAE8 3C01FFFE */  lui        $at, 0xfffe
/* 6B6EC 8006AAEC 01215021 */  addu       $t2, $t1, $at
/* 6B6F0 8006AAF0 24030001 */  addiu      $v1, $zero, 1
/* 6B6F4 8006AAF4 AC4A015C */  sw         $t2, 0x15c($v0)
/* 6B6F8 8006AAF8 1000000F */  b          .L8006AB38
/* 6B6FC 8006AAFC AC4B0160 */   sw        $t3, 0x160($v0)
.L8006AB00:
/* 6B700 8006AB00 8C4C0160 */  lw         $t4, 0x160($v0)
/* 6B704 8006AB04 3C010001 */  lui        $at, 1
/* 6B708 8006AB08 11800007 */  beqz       $t4, .L8006AB28
/* 6B70C 8006AB0C 00000000 */   nop
/* 6B710 8006AB10 8C4D015C */  lw         $t5, 0x15c($v0)
/* 6B714 8006AB14 3C01FFFE */  lui        $at, 0xfffe
/* 6B718 8006AB18 34218000 */  ori        $at, $at, 0x8000
/* 6B71C 8006AB1C 01A17021 */  addu       $t6, $t5, $at
/* 6B720 8006AB20 10000005 */  b          .L8006AB38
/* 6B724 8006AB24 AC4E015C */   sw        $t6, 0x15c($v0)
.L8006AB28:
/* 6B728 8006AB28 8C4F015C */  lw         $t7, 0x15c($v0)
/* 6B72C 8006AB2C 34218000 */  ori        $at, $at, 0x8000
/* 6B730 8006AB30 01E1C021 */  addu       $t8, $t7, $at
/* 6B734 8006AB34 AC58015C */  sw         $t8, 0x15c($v0)
.L8006AB38:
/* 6B738 8006AB38 8C44015C */  lw         $a0, 0x15c($v0)
/* 6B73C 8006AB3C 3C01002F */  lui        $at, 0x2f
/* 6B740 8006AB40 0481000C */  bgez       $a0, .L8006AB74
/* 6B744 8006AB44 34210001 */   ori       $at, $at, 1
/* 6B748 8006AB48 AC40015C */  sw         $zero, 0x15c($v0)
/* 6B74C 8006AB4C 10600018 */  beqz       $v1, .L8006ABB0
/* 6B750 8006AB50 AC400160 */   sw        $zero, 0x160($v0)
/* 6B754 8006AB54 3C19800C */  lui        $t9, %hi(D_800BE4E0)
/* 6B758 8006AB58 9739E4E0 */  lhu        $t9, %lo(D_800BE4E0)($t9)
/* 6B75C 8006AB5C 2409103A */  addiu      $t1, $zero, 0x103a
/* 6B760 8006AB60 33280004 */  andi       $t0, $t9, 4
/* 6B764 8006AB64 11000012 */  beqz       $t0, .L8006ABB0
/* 6B768 8006AB68 00000000 */   nop
/* 6B76C 8006AB6C 03E00008 */  jr         $ra
/* 6B770 8006AB70 A4490084 */   sh        $t1, 0x84($v0)
.L8006AB74:
/* 6B774 8006AB74 0081082A */  slt        $at, $a0, $at
/* 6B778 8006AB78 1420000D */  bnez       $at, .L8006ABB0
/* 6B77C 8006AB7C 3C0A002F */   lui       $t2, 0x2f
/* 6B780 8006AB80 240B0001 */  addiu      $t3, $zero, 1
/* 6B784 8006AB84 AC4A015C */  sw         $t2, 0x15c($v0)
/* 6B788 8006AB88 10600009 */  beqz       $v1, .L8006ABB0
/* 6B78C 8006AB8C AC4B0160 */   sw        $t3, 0x160($v0)
/* 6B790 8006AB90 3C0C800C */  lui        $t4, %hi(D_800BE4E0)
/* 6B794 8006AB94 958CE4E0 */  lhu        $t4, %lo(D_800BE4E0)($t4)
/* 6B798 8006AB98 240E1032 */  addiu      $t6, $zero, 0x1032
/* 6B79C 8006AB9C 318D0004 */  andi       $t5, $t4, 4
/* 6B7A0 8006ABA0 11A00003 */  beqz       $t5, .L8006ABB0
/* 6B7A4 8006ABA4 00000000 */   nop
/* 6B7A8 8006ABA8 03E00008 */  jr         $ra
/* 6B7AC 8006ABAC A44E0084 */   sh        $t6, 0x84($v0)
.L8006ABB0:
/* 6B7B0 8006ABB0 8C4F015C */  lw         $t7, 0x15c($v0)
/* 6B7B4 8006ABB4 3C08800D */  lui        $t0, 0x800d
/* 6B7B8 8006ABB8 05E10005 */  bgez       $t7, .L8006ABD0
/* 6B7BC 8006ABBC 000FC4C3 */   sra       $t8, $t7, 0x13
/* 6B7C0 8006ABC0 3C010008 */  lui        $at, 8
/* 6B7C4 8006ABC4 2421FFFF */  addiu      $at, $at, -1
/* 6B7C8 8006ABC8 002F0821 */  addu       $at, $at, $t7
/* 6B7CC 8006ABCC 0001C4C3 */  sra        $t8, $at, 0x13
.L8006ABD0:
/* 6B7D0 8006ABD0 0018C840 */  sll        $t9, $t8, 1
/* 6B7D4 8006ABD4 01194021 */  addu       $t0, $t0, $t9
/* 6B7D8 8006ABD8 95087EB0 */  lhu        $t0, 0x7eb0($t0)
/* 6B7DC 8006ABDC 00000000 */  nop
/* 6B7E0 8006ABE0 A4480084 */  sh         $t0, 0x84($v0)
/* 6B7E4 8006ABE4 03E00008 */  jr         $ra
/* 6B7E8 8006ABE8 00000000 */   nop
