glabel func_8003B8CC
/* 3C4CC 8003B8CC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3C4D0 8003B8D0 000E7880 */  sll        $t7, $t6, 2
/* 3C4D4 8003B8D4 01EE7823 */  subu       $t7, $t7, $t6
/* 3C4D8 8003B8D8 000F7880 */  sll        $t7, $t7, 2
/* 3C4DC 8003B8DC 01EE7821 */  addu       $t7, $t7, $t6
/* 3C4E0 8003B8E0 000F7880 */  sll        $t7, $t7, 2
/* 3C4E4 8003B8E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3C4E8 8003B8E8 3C05800F */  lui        $a1, %hi(gActors)
/* 3C4EC 8003B8EC 01EE7823 */  subu       $t7, $t7, $t6
/* 3C4F0 8003B8F0 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 3C4F4 8003B8F4 AFB00028 */  sw         $s0, 0x28($sp)
/* 3C4F8 8003B8F8 000F78C0 */  sll        $t7, $t7, 3
/* 3C4FC 8003B8FC 00AF8021 */  addu       $s0, $a1, $t7
/* 3C500 8003B900 960200D8 */  lhu        $v0, 0xd8($s0)
/* 3C504 8003B904 AFA40030 */  sw         $a0, 0x30($sp)
/* 3C508 8003B908 24013410 */  addiu      $at, $zero, 0x3410
/* 3C50C 8003B90C 30583410 */  andi       $t8, $v0, 0x3410
/* 3C510 8003B910 01C02025 */  or         $a0, $t6, $zero
/* 3C514 8003B914 17010005 */  bne        $t8, $at, .L8003B92C
/* 3C518 8003B918 AFBF002C */   sw        $ra, 0x2c($sp)
/* 3C51C 8003B91C 0C00ED8C */  jal        func_8003B630
/* 3C520 8003B920 00000000 */   nop
/* 3C524 8003B924 10000142 */  b          .L8003BE30
/* 3C528 8003B928 8FBF002C */   lw        $ra, 0x2c($sp)
.L8003B92C:
/* 3C52C 8003B92C 961900D0 */  lhu        $t9, 0xd0($s0)
/* 3C530 8003B930 00000000 */  nop
/* 3C534 8003B934 13200015 */  beqz       $t9, .L8003B98C
/* 3C538 8003B938 00000000 */   nop
/* 3C53C 8003B93C 8E080098 */  lw         $t0, 0x98($s0)
/* 3C540 8003B940 240B0001 */  addiu      $t3, $zero, 1
/* 3C544 8003B944 31090200 */  andi       $t1, $t0, 0x200
/* 3C548 8003B948 11200010 */  beqz       $t1, .L8003B98C
/* 3C54C 8003B94C 304C0001 */   andi      $t4, $v0, 1
/* 3C550 8003B950 8E0A010C */  lw         $t2, 0x10c($s0)
/* 3C554 8003B954 AE0B0188 */  sw         $t3, 0x188($s0)
/* 3C558 8003B958 1180000D */  beqz       $t4, .L8003B990
/* 3C55C 8003B95C AE0A0090 */   sw        $t2, 0x90($s0)
/* 3C560 8003B960 8E0D0150 */  lw         $t5, 0x150($s0)
/* 3C564 8003B964 304FFFFE */  andi       $t7, $v0, 0xfffe
/* 3C568 8003B968 000D7040 */  sll        $t6, $t5, 1
/* 3C56C 8003B96C 05C00008 */  bltz       $t6, .L8003B990
/* 3C570 8003B970 00000000 */   nop
/* 3C574 8003B974 A60F00D8 */  sh         $t7, 0xd8($s0)
/* 3C578 8003B978 8CB80080 */  lw         $t8, 0x80($a1)
/* 3C57C 8003B97C 2401FFDF */  addiu      $at, $zero, -0x21
/* 3C580 8003B980 0301C824 */  and        $t9, $t8, $at
/* 3C584 8003B984 10000002 */  b          .L8003B990
/* 3C588 8003B988 ACB90080 */   sw        $t9, 0x80($a1)
.L8003B98C:
/* 3C58C 8003B98C AE000188 */  sw         $zero, 0x188($s0)
.L8003B990:
/* 3C590 8003B990 0C00E591 */  jal        func_80039644
/* 3C594 8003B994 A7A40032 */   sh        $a0, 0x32($sp)
/* 3C598 8003B998 97A40032 */  lhu        $a0, 0x32($sp)
/* 3C59C 8003B99C 0C00A1DF */  jal        func_8002877C
/* 3C5A0 8003B9A0 00000000 */   nop
/* 3C5A4 8003B9A4 8E030170 */  lw         $v1, 0x170($s0)
/* 3C5A8 8003B9A8 3C05800F */  lui        $a1, %hi(gActors)
/* 3C5AC 8003B9AC 10600022 */  beqz       $v1, .L8003BA38
/* 3C5B0 8003B9B0 24A5F510 */   addiu     $a1, $a1, %lo(gActors)
/* 3C5B4 8003B9B4 18600006 */  blez       $v1, .L8003B9D0
/* 3C5B8 8003B9B8 00000000 */   nop
/* 3C5BC 8003B9BC 8E080098 */  lw         $t0, 0x98($s0)
/* 3C5C0 8003B9C0 00000000 */  nop
/* 3C5C4 8003B9C4 31090008 */  andi       $t1, $t0, 8
/* 3C5C8 8003B9C8 15200008 */  bnez       $t1, .L8003B9EC
/* 3C5CC 8003B9CC 00036023 */   negu      $t4, $v1
.L8003B9D0:
/* 3C5D0 8003B9D0 04610019 */  bgez       $v1, .L8003BA38
/* 3C5D4 8003B9D4 00000000 */   nop
/* 3C5D8 8003B9D8 8E0A0098 */  lw         $t2, 0x98($s0)
/* 3C5DC 8003B9DC 00000000 */  nop
/* 3C5E0 8003B9E0 314B0004 */  andi       $t3, $t2, 4
/* 3C5E4 8003B9E4 11600014 */  beqz       $t3, .L8003BA38
/* 3C5E8 8003B9E8 00036023 */   negu      $t4, $v1
.L8003B9EC:
/* 3C5EC 8003B9EC 448C2000 */  mtc1       $t4, $f4
/* 3C5F0 8003B9F0 3C01800F */  lui        $at, %hi(D_800EBB40)
/* 3C5F4 8003B9F4 468021A0 */  cvt.s.w    $f6, $f4
/* 3C5F8 8003B9F8 C42BBB40 */  lwc1       $f11, %lo(D_800EBB40)($at)
/* 3C5FC 8003B9FC C42ABB44 */  lwc1       $f10, -0x44bc($at)
/* 3C600 8003BA00 46003221 */  cvt.d.s    $f8, $f6
/* 3C604 8003BA04 462A4402 */  mul.d      $f16, $f8, $f10
/* 3C608 8003BA08 444DF800 */  cfc1       $t5, $31
/* 3C60C 8003BA0C 00000000 */  nop
/* 3C610 8003BA10 35A10003 */  ori        $at, $t5, 3
/* 3C614 8003BA14 38210002 */  xori       $at, $at, 2
/* 3C618 8003BA18 44C1F800 */  ctc1       $at, $31
/* 3C61C 8003BA1C 3C01800F */  lui        $at, %hi(D_800EBB48)
/* 3C620 8003BA20 462084A4 */  cvt.w.d    $f18, $f16
/* 3C624 8003BA24 E6120170 */  swc1       $f18, 0x170($s0)
/* 3C628 8003BA28 C424BB48 */  lwc1       $f4, %lo(D_800EBB48)($at)
/* 3C62C 8003BA2C 44CDF800 */  ctc1       $t5, $31
/* 3C630 8003BA30 E60400B4 */  swc1       $f4, 0xb4($s0)
/* 3C634 8003BA34 00000000 */  nop
.L8003BA38:
/* 3C638 8003BA38 960200D0 */  lhu        $v0, 0xd0($s0)
/* 3C63C 8003BA3C 00000000 */  nop
/* 3C640 8003BA40 10400007 */  beqz       $v0, .L8003BA60
/* 3C644 8003BA44 24010001 */   addiu     $at, $zero, 1
/* 3C648 8003BA48 10410015 */  beq        $v0, $at, .L8003BAA0
/* 3C64C 8003BA4C 24010002 */   addiu     $at, $zero, 2
/* 3C650 8003BA50 10410062 */  beq        $v0, $at, .L8003BBDC
/* 3C654 8003BA54 3C013F80 */   lui       $at, 0x3f80
/* 3C658 8003BA58 100000B1 */  b          .L8003BD20
/* 3C65C 8003BA5C 3C013F80 */   lui       $at, 0x3f80
.L8003BA60:
/* 3C660 8003BA60 97A40032 */  lhu        $a0, 0x32($sp)
/* 3C664 8003BA64 0C00E5C9 */  jal        func_80039724
/* 3C668 8003BA68 00000000 */   nop
/* 3C66C 8003BA6C 8E0F0080 */  lw         $t7, 0x80($s0)
/* 3C670 8003BA70 3C010002 */  lui        $at, 2
/* 3C674 8003BA74 44803000 */  mtc1       $zero, $f6
/* 3C678 8003BA78 34218500 */  ori        $at, $at, 0x8500
/* 3C67C 8003BA7C 240E0201 */  addiu      $t6, $zero, 0x201
/* 3C680 8003BA80 24190006 */  addiu      $t9, $zero, 6
/* 3C684 8003BA84 24080040 */  addiu      $t0, $zero, 0x40
/* 3C688 8003BA88 01E1C025 */  or         $t8, $t7, $at
/* 3C68C 8003BA8C A60E0094 */  sh         $t6, 0x94($s0)
/* 3C690 8003BA90 AE180080 */  sw         $t8, 0x80($s0)
/* 3C694 8003BA94 A20800DF */  sb         $t0, 0xdf($s0)
/* 3C698 8003BA98 A21900DE */  sb         $t9, 0xde($s0)
/* 3C69C 8003BA9C E606014C */  swc1       $f6, 0x14c($s0)
.L8003BAA0:
/* 3C6A0 8003BAA0 8E040170 */  lw         $a0, 0x170($s0)
/* 3C6A4 8003BAA4 00002825 */  or         $a1, $zero, $zero
/* 3C6A8 8003BAA8 0C00A607 */  jal        func_8002981C
/* 3C6AC 8003BAAC 24060100 */   addiu     $a2, $zero, 0x100
/* 3C6B0 8003BAB0 8E090174 */  lw         $t1, 0x174($s0)
/* 3C6B4 8003BAB4 AE020170 */  sw         $v0, 0x170($s0)
/* 3C6B8 8003BAB8 252AD000 */  addiu      $t2, $t1, -0x3000
/* 3C6BC 8003BABC 05410097 */  bgez       $t2, .L8003BD1C
/* 3C6C0 8003BAC0 AE0A0174 */   sw        $t2, 0x174($s0)
/* 3C6C4 8003BAC4 8E0C0098 */  lw         $t4, 0x98($s0)
/* 3C6C8 8003BAC8 3C01FFFD */  lui        $at, 0xfffd
/* 3C6CC 8003BACC 318D0020 */  andi       $t5, $t4, 0x20
/* 3C6D0 8003BAD0 11A00092 */  beqz       $t5, .L8003BD1C
/* 3C6D4 8003BAD4 3421FFFF */   ori       $at, $at, 0xffff
/* 3C6D8 8003BAD8 8E180080 */  lw         $t8, 0x80($s0)
/* 3C6DC 8003BADC 960E00D0 */  lhu        $t6, 0xd0($s0)
/* 3C6E0 8003BAE0 0301C824 */  and        $t9, $t8, $at
/* 3C6E4 8003BAE4 3C010001 */  lui        $at, 1
/* 3C6E8 8003BAE8 03214825 */  or         $t1, $t9, $at
/* 3C6EC 8003BAEC 3C014000 */  lui        $at, 0x4000
/* 3C6F0 8003BAF0 44814000 */  mtc1       $at, $f8
/* 3C6F4 8003BAF4 AE190080 */  sw         $t9, 0x80($s0)
/* 3C6F8 8003BAF8 97A50032 */  lhu        $a1, 0x32($sp)
/* 3C6FC 8003BAFC 25CF0001 */  addiu      $t7, $t6, 1
/* 3C700 8003BB00 A60F00D0 */  sh         $t7, 0xd0($s0)
/* 3C704 8003BB04 AE090080 */  sw         $t1, 0x80($s0)
/* 3C708 8003BB08 24040082 */  addiu      $a0, $zero, 0x82
/* 3C70C 8003BB0C 0C000DB2 */  jal        func_800036C8
/* 3C710 8003BB10 E6080114 */   swc1      $f8, 0x114($s0)
/* 3C714 8003BB14 8E030170 */  lw         $v1, 0x170($s0)
/* 3C718 8003BB18 3C01800F */  lui        $at, %hi(D_800EBB4C)
/* 3C71C 8003BB1C C42ABB4C */  lwc1       $f10, %lo(D_800EBB4C)($at)
/* 3C720 8003BB20 44838000 */  mtc1       $v1, $f16
/* 3C724 8003BB24 3C01800F */  lui        $at, %hi(D_800EBB54)
/* 3C728 8003BB28 468084A0 */  cvt.s.w    $f18, $f16
/* 3C72C 8003BB2C E60A00B8 */  swc1       $f10, 0xb8($s0)
/* 3C730 8003BB30 C426BB54 */  lwc1       $f6, %lo(D_800EBB54)($at)
/* 3C734 8003BB34 C427BB50 */  lwc1       $f7, -0x44b0($at)
/* 3C738 8003BB38 46009121 */  cvt.d.s    $f4, $f18
/* 3C73C 8003BB3C 46262202 */  mul.d      $f8, $f4, $f6
/* 3C740 8003BB40 8E0B0174 */  lw         $t3, 0x174($s0)
/* 3C744 8003BB44 3C040003 */  lui        $a0, 3
/* 3C748 8003BB48 000B6023 */  negu       $t4, $t3
/* 3C74C 8003BB4C 448C8000 */  mtc1       $t4, $f16
/* 3C750 8003BB50 444AF800 */  cfc1       $t2, $31
/* 3C754 8003BB54 00000000 */  nop
/* 3C758 8003BB58 35410003 */  ori        $at, $t2, 3
/* 3C75C 8003BB5C 38210002 */  xori       $at, $at, 2
/* 3C760 8003BB60 44C1F800 */  ctc1       $at, $31
/* 3C764 8003BB64 3C01800F */  lui        $at, %hi(D_800EBB5C)
/* 3C768 8003BB68 462042A4 */  cvt.w.d    $f10, $f8
/* 3C76C 8003BB6C 44CAF800 */  ctc1       $t2, $31
/* 3C770 8003BB70 E60A0178 */  swc1       $f10, 0x178($s0)
/* 3C774 8003BB74 468084A0 */  cvt.s.w    $f18, $f16
/* 3C778 8003BB78 C426BB5C */  lwc1       $f6, %lo(D_800EBB5C)($at)
/* 3C77C 8003BB7C C427BB58 */  lwc1       $f7, -0x44a8($at)
/* 3C780 8003BB80 46009121 */  cvt.d.s    $f4, $f18
/* 3C784 8003BB84 46262202 */  mul.d      $f8, $f4, $f6
/* 3C788 8003BB88 AE000174 */  sw         $zero, 0x174($s0)
/* 3C78C 8003BB8C 444DF800 */  cfc1       $t5, $31
/* 3C790 8003BB90 00000000 */  nop
/* 3C794 8003BB94 35A10003 */  ori        $at, $t5, 3
/* 3C798 8003BB98 38210002 */  xori       $at, $at, 2
/* 3C79C 8003BB9C 44C1F800 */  ctc1       $at, $31
/* 3C7A0 8003BBA0 00000000 */  nop
/* 3C7A4 8003BBA4 462042A4 */  cvt.w.d    $f10, $f8
/* 3C7A8 8003BBA8 E60A017C */  swc1       $f10, 0x17c($s0)
/* 3C7AC 8003BBAC 8E0F017C */  lw         $t7, 0x17c($s0)
/* 3C7B0 8003BBB0 44CDF800 */  ctc1       $t5, $31
/* 3C7B4 8003BBB4 04610003 */  bgez       $v1, .L8003BBC4
/* 3C7B8 8003BBB8 00037103 */   sra       $t6, $v1, 4
/* 3C7BC 8003BBBC 2461000F */  addiu      $at, $v1, 0xf
/* 3C7C0 8003BBC0 00017103 */  sra        $t6, $at, 4
.L8003BBC4:
/* 3C7C4 8003BBC4 01E4082A */  slt        $at, $t7, $a0
/* 3C7C8 8003BBC8 10200054 */  beqz       $at, .L8003BD1C
/* 3C7CC 8003BBCC AE0E0170 */   sw        $t6, 0x170($s0)
/* 3C7D0 8003BBD0 10000052 */  b          .L8003BD1C
/* 3C7D4 8003BBD4 AE04017C */   sw        $a0, 0x17c($s0)
/* 3C7D8 8003BBD8 3C013F80 */  lui        $at, 0x3f80
.L8003BBDC:
/* 3C7DC 8003BBDC 44819000 */  mtc1       $at, $f18
/* 3C7E0 8003BBE0 C6100114 */  lwc1       $f16, 0x114($s0)
/* 3C7E4 8003BBE4 44804000 */  mtc1       $zero, $f8
/* 3C7E8 8003BBE8 46128101 */  sub.s      $f4, $f16, $f18
/* 3C7EC 8003BBEC 3C01FFFE */  lui        $at, 0xfffe
/* 3C7F0 8003BBF0 E6040114 */  swc1       $f4, 0x114($s0)
/* 3C7F4 8003BBF4 C6060114 */  lwc1       $f6, 0x114($s0)
/* 3C7F8 8003BBF8 3421FFFF */  ori        $at, $at, 0xffff
/* 3C7FC 8003BBFC 4608303C */  c.lt.s     $f6, $f8
/* 3C800 8003BC00 00000000 */  nop
/* 3C804 8003BC04 45000045 */  bc1f       .L8003BD1C
/* 3C808 8003BC08 00000000 */   nop
/* 3C80C 8003BC0C 8E080080 */  lw         $t0, 0x80($s0)
/* 3C810 8003BC10 961800D0 */  lhu        $t8, 0xd0($s0)
/* 3C814 8003BC14 01014824 */  and        $t1, $t0, $at
/* 3C818 8003BC18 8E0E0098 */  lw         $t6, 0x98($s0)
/* 3C81C 8003BC1C 8E0C0178 */  lw         $t4, 0x178($s0)
/* 3C820 8003BC20 8E0D017C */  lw         $t5, 0x17c($s0)
/* 3C824 8003BC24 3C010002 */  lui        $at, 2
/* 3C828 8003BC28 AE090080 */  sw         $t1, 0x80($s0)
/* 3C82C 8003BC2C 01215825 */  or         $t3, $t1, $at
/* 3C830 8003BC30 2719FFFF */  addiu      $t9, $t8, -1
/* 3C834 8003BC34 31CF0200 */  andi       $t7, $t6, 0x200
/* 3C838 8003BC38 A61900D0 */  sh         $t9, 0xd0($s0)
/* 3C83C 8003BC3C AE0B0080 */  sw         $t3, 0x80($s0)
/* 3C840 8003BC40 AE0C0170 */  sw         $t4, 0x170($s0)
/* 3C844 8003BC44 15E00035 */  bnez       $t7, .L8003BD1C
/* 3C848 8003BC48 AE0D0174 */   sw        $t5, 0x174($s0)
/* 3C84C 8003BC4C 4458F800 */  cfc1       $t8, $31
/* 3C850 8003BC50 24190001 */  addiu      $t9, $zero, 1
/* 3C854 8003BC54 44D9F800 */  ctc1       $t9, $31
/* 3C858 8003BC58 C60A0110 */  lwc1       $f10, 0x110($s0)
/* 3C85C 8003BC5C 3C014F00 */  lui        $at, 0x4f00
/* 3C860 8003BC60 46005424 */  cvt.w.s    $f16, $f10
/* 3C864 8003BC64 4459F800 */  cfc1       $t9, $31
/* 3C868 8003BC68 00000000 */  nop
/* 3C86C 8003BC6C 33390078 */  andi       $t9, $t9, 0x78
/* 3C870 8003BC70 13200012 */  beqz       $t9, .L8003BCBC
/* 3C874 8003BC74 00000000 */   nop
/* 3C878 8003BC78 44818000 */  mtc1       $at, $f16
/* 3C87C 8003BC7C 24190001 */  addiu      $t9, $zero, 1
/* 3C880 8003BC80 46105401 */  sub.s      $f16, $f10, $f16
/* 3C884 8003BC84 3C018000 */  lui        $at, 0x8000
/* 3C888 8003BC88 44D9F800 */  ctc1       $t9, $31
/* 3C88C 8003BC8C 00000000 */  nop
/* 3C890 8003BC90 46008424 */  cvt.w.s    $f16, $f16
/* 3C894 8003BC94 4459F800 */  cfc1       $t9, $31
/* 3C898 8003BC98 00000000 */  nop
/* 3C89C 8003BC9C 33390078 */  andi       $t9, $t9, 0x78
/* 3C8A0 8003BCA0 17200004 */  bnez       $t9, .L8003BCB4
/* 3C8A4 8003BCA4 00000000 */   nop
/* 3C8A8 8003BCA8 44198000 */  mfc1       $t9, $f16
/* 3C8AC 8003BCAC 10000007 */  b          .L8003BCCC
/* 3C8B0 8003BCB0 0321C825 */   or        $t9, $t9, $at
.L8003BCB4:
/* 3C8B4 8003BCB4 10000005 */  b          .L8003BCCC
/* 3C8B8 8003BCB8 2419FFFF */   addiu     $t9, $zero, -1
.L8003BCBC:
/* 3C8BC 8003BCBC 44198000 */  mfc1       $t9, $f16
/* 3C8C0 8003BCC0 00000000 */  nop
/* 3C8C4 8003BCC4 0720FFFB */  bltz       $t9, .L8003BCB4
/* 3C8C8 8003BCC8 00000000 */   nop
.L8003BCCC:
/* 3C8CC 8003BCCC 44D8F800 */  ctc1       $t8, $31
/* 3C8D0 8003BCD0 33291000 */  andi       $t1, $t9, 0x1000
/* 3C8D4 8003BCD4 11200012 */  beqz       $t1, .L8003BD20
/* 3C8D8 8003BCD8 3C013F80 */   lui       $at, 0x3f80
/* 3C8DC 8003BCDC 860A0088 */  lh         $t2, 0x88($s0)
/* 3C8E0 8003BCE0 84AB0088 */  lh         $t3, 0x88($a1)
/* 3C8E4 8003BCE4 3C060002 */  lui        $a2, 2
/* 3C8E8 8003BCE8 014B082A */  slt        $at, $t2, $t3
/* 3C8EC 8003BCEC 10200007 */  beqz       $at, .L8003BD0C
/* 3C8F0 8003BCF0 00000000 */   nop
/* 3C8F4 8003BCF4 3C060002 */  lui        $a2, 2
/* 3C8F8 8003BCF8 8E040170 */  lw         $a0, 0x170($s0)
/* 3C8FC 8003BCFC 0C00A607 */  jal        func_8002981C
/* 3C900 8003BD00 00C02825 */   or        $a1, $a2, $zero
/* 3C904 8003BD04 10000005 */  b          .L8003BD1C
/* 3C908 8003BD08 AE020170 */   sw        $v0, 0x170($s0)
.L8003BD0C:
/* 3C90C 8003BD0C 8E040170 */  lw         $a0, 0x170($s0)
/* 3C910 8003BD10 0C00A607 */  jal        func_8002981C
/* 3C914 8003BD14 3C05FFFE */   lui       $a1, 0xfffe
/* 3C918 8003BD18 AE020170 */  sw         $v0, 0x170($s0)
.L8003BD1C:
/* 3C91C 8003BD1C 3C013F80 */  lui        $at, 0x3f80
.L8003BD20:
/* 3C920 8003BD20 44817000 */  mtc1       $at, $f14
/* 3C924 8003BD24 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 3C928 8003BD28 3C063D4C */  lui        $a2, 0x3d4c
/* 3C92C 8003BD2C 0C00A618 */  jal        func_80029860
/* 3C930 8003BD30 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 3C934 8003BD34 3C013F80 */  lui        $at, 0x3f80
/* 3C938 8003BD38 44817000 */  mtc1       $at, $f14
/* 3C93C 8003BD3C C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 3C940 8003BD40 3C063D4C */  lui        $a2, 0x3d4c
/* 3C944 8003BD44 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 3C948 8003BD48 0C00A618 */  jal        func_80029860
/* 3C94C 8003BD4C 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 3C950 8003BD50 8E0C0170 */  lw         $t4, 0x170($s0)
/* 3C954 8003BD54 8E0D0174 */  lw         $t5, 0x174($s0)
/* 3C958 8003BD58 97A40032 */  lhu        $a0, 0x32($sp)
/* 3C95C 8003BD5C E60000B8 */  swc1       $f0, 0xb8($s0)
/* 3C960 8003BD60 3C050006 */  lui        $a1, 6
/* 3C964 8003BD64 AE0C00EC */  sw         $t4, 0xec($s0)
/* 3C968 8003BD68 0C00A846 */  jal        func_8002A118
/* 3C96C 8003BD6C AE0D00F0 */   sw        $t5, 0xf0($s0)
/* 3C970 8003BD70 97A40032 */  lhu        $a0, 0x32($sp)
/* 3C974 8003BD74 3C050007 */  lui        $a1, 7
/* 3C978 8003BD78 0C00A85C */  jal        func_8002A170
/* 3C97C 8003BD7C 34A5FFF0 */   ori       $a1, $a1, 0xfff0
/* 3C980 8003BD80 8E020174 */  lw         $v0, 0x174($s0)
/* 3C984 8003BD84 3C03FFF6 */  lui        $v1, 0xfff6
/* 3C988 8003BD88 0043082A */  slt        $at, $v0, $v1
/* 3C98C 8003BD8C 10200003 */  beqz       $at, .L8003BD9C
/* 3C990 8003BD90 24050240 */   addiu     $a1, $zero, 0x240
/* 3C994 8003BD94 AE030174 */  sw         $v1, 0x174($s0)
/* 3C998 8003BD98 00601025 */  or         $v0, $v1, $zero
.L8003BD9C:
/* 3C99C 8003BD9C 3C01000A */  lui        $at, 0xa
/* 3C9A0 8003BDA0 34210001 */  ori        $at, $at, 1
/* 3C9A4 8003BDA4 0041082A */  slt        $at, $v0, $at
/* 3C9A8 8003BDA8 14200003 */  bnez       $at, .L8003BDB8
/* 3C9AC 8003BDAC 24060100 */   addiu     $a2, $zero, 0x100
/* 3C9B0 8003BDB0 3C0E000A */  lui        $t6, 0xa
/* 3C9B4 8003BDB4 AE0E0174 */  sw         $t6, 0x174($s0)
.L8003BDB8:
/* 3C9B8 8003BDB8 8E030170 */  lw         $v1, 0x170($s0)
/* 3C9BC 8003BDBC 3C02FFF0 */  lui        $v0, 0xfff0
/* 3C9C0 8003BDC0 0062082A */  slt        $at, $v1, $v0
/* 3C9C4 8003BDC4 10200003 */  beqz       $at, .L8003BDD4
/* 3C9C8 8003BDC8 24180001 */   addiu     $t8, $zero, 1
/* 3C9CC 8003BDCC AE020170 */  sw         $v0, 0x170($s0)
/* 3C9D0 8003BDD0 00401825 */  or         $v1, $v0, $zero
.L8003BDD4:
/* 3C9D4 8003BDD4 3C010010 */  lui        $at, 0x10
/* 3C9D8 8003BDD8 34210001 */  ori        $at, $at, 1
/* 3C9DC 8003BDDC 0061082A */  slt        $at, $v1, $at
/* 3C9E0 8003BDE0 14200002 */  bnez       $at, .L8003BDEC
/* 3C9E4 8003BDE4 3C0F0010 */   lui       $t7, 0x10
/* 3C9E8 8003BDE8 AE0F0170 */  sw         $t7, 0x170($s0)
.L8003BDEC:
/* 3C9EC 8003BDEC 3C014140 */  lui        $at, 0x4140
/* 3C9F0 8003BDF0 44819000 */  mtc1       $at, $f18
/* 3C9F4 8003BDF4 C60000B8 */  lwc1       $f0, 0xb8($s0)
/* 3C9F8 8003BDF8 C60600B4 */  lwc1       $f6, 0xb4($s0)
/* 3C9FC 8003BDFC 46120102 */  mul.s      $f4, $f0, $f18
/* 3CA00 8003BE00 97A40032 */  lhu        $a0, 0x32($sp)
/* 3CA04 8003BE04 AFB80010 */  sw         $t8, 0x10($sp)
/* 3CA08 8003BE08 E7A00018 */  swc1       $f0, 0x18($sp)
/* 3CA0C 8003BE0C 44072000 */  mfc1       $a3, $f4
/* 3CA10 8003BE10 0C00CB98 */  jal        func_80032E60
/* 3CA14 8003BE14 E7A60014 */   swc1      $f6, 0x14($sp)
/* 3CA18 8003BE18 8E190098 */  lw         $t9, 0x98($s0)
/* 3CA1C 8003BE1C 3C01FFDF */  lui        $at, 0xffdf
/* 3CA20 8003BE20 3421F9FF */  ori        $at, $at, 0xf9ff
/* 3CA24 8003BE24 03214024 */  and        $t0, $t9, $at
/* 3CA28 8003BE28 AE080098 */  sw         $t0, 0x98($s0)
/* 3CA2C 8003BE2C 8FBF002C */  lw         $ra, 0x2c($sp)
.L8003BE30:
/* 3CA30 8003BE30 8FB00028 */  lw         $s0, 0x28($sp)
/* 3CA34 8003BE34 03E00008 */  jr         $ra
/* 3CA38 8003BE38 27BD0030 */   addiu     $sp, $sp, 0x30
