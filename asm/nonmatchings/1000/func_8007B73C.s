glabel func_8007B73C
/* 7C33C 8007B73C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7C340 8007B740 AFA40030 */  sw         $a0, 0x30($sp)
/* 7C344 8007B744 97AE0032 */  lhu        $t6, 0x32($sp)
/* 7C348 8007B748 3C18800F */  lui        $t8, 0x800f
/* 7C34C 8007B74C 000E7880 */  sll        $t7, $t6, 2
/* 7C350 8007B750 01EE7823 */  subu       $t7, $t7, $t6
/* 7C354 8007B754 000F7880 */  sll        $t7, $t7, 2
/* 7C358 8007B758 01EE7821 */  addu       $t7, $t7, $t6
/* 7C35C 8007B75C 000F7880 */  sll        $t7, $t7, 2
/* 7C360 8007B760 01EE7823 */  subu       $t7, $t7, $t6
/* 7C364 8007B764 AFB00028 */  sw         $s0, 0x28($sp)
/* 7C368 8007B768 000F78C0 */  sll        $t7, $t7, 3
/* 7C36C 8007B76C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 7C370 8007B770 01F88021 */  addu       $s0, $t7, $t8
/* 7C374 8007B774 3C08800C */  lui        $t0, %hi(D_800BE558)
/* 7C378 8007B778 8508E558 */  lh         $t0, %lo(D_800BE558)($t0)
/* 7C37C 8007B77C 86190088 */  lh         $t9, 0x88($s0)
/* 7C380 8007B780 C60600B4 */  lwc1       $f6, 0xb4($s0)
/* 7C384 8007B784 3C013FE8 */  lui        $at, 0x3fe8
/* 7C388 8007B788 03284821 */  addu       $t1, $t9, $t0
/* 7C38C 8007B78C 44812800 */  mtc1       $at, $f5
/* 7C390 8007B790 44802000 */  mtc1       $zero, $f4
/* 7C394 8007B794 AE090178 */  sw         $t1, 0x178($s0)
/* 7C398 8007B798 3C0B800C */  lui        $t3, %hi(D_800BE55C)
/* 7C39C 8007B79C 856BE55C */  lh         $t3, %lo(D_800BE55C)($t3)
/* 7C3A0 8007B7A0 860A008C */  lh         $t2, 0x8c($s0)
/* 7C3A4 8007B7A4 46003221 */  cvt.d.s    $f8, $f6
/* 7C3A8 8007B7A8 46282032 */  c.eq.d     $f4, $f8
/* 7C3AC 8007B7AC 014B6021 */  addu       $t4, $t2, $t3
/* 7C3B0 8007B7B0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 7C3B4 8007B7B4 4500000D */  bc1f       .L8007B7EC
/* 7C3B8 8007B7B8 AE0C017C */   sw        $t4, 0x17c($s0)
/* 7C3BC 8007B7BC 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C3C0 8007B7C0 240D0069 */  addiu      $t5, $zero, 0x69
/* 7C3C4 8007B7C4 AFAD0010 */  sw         $t5, 0x10($sp)
/* 7C3C8 8007B7C8 24050400 */  addiu      $a1, $zero, 0x400
/* 7C3CC 8007B7CC 00003025 */  or         $a2, $zero, $zero
/* 7C3D0 8007B7D0 0C00D49B */  jal        func_8003526C
/* 7C3D4 8007B7D4 00003825 */   or        $a3, $zero, $zero
/* 7C3D8 8007B7D8 04400004 */  bltz       $v0, .L8007B7EC
/* 7C3DC 8007B7DC 240E0002 */   addiu     $t6, $zero, 2
/* 7C3E0 8007B7E0 240F0001 */  addiu      $t7, $zero, 1
/* 7C3E4 8007B7E4 AE0E0080 */  sw         $t6, 0x80($s0)
/* 7C3E8 8007B7E8 A60F00D0 */  sh         $t7, 0xd0($s0)
.L8007B7EC:
/* 7C3EC 8007B7EC 961800D0 */  lhu        $t8, 0xd0($s0)
/* 7C3F0 8007B7F0 00000000 */  nop
/* 7C3F4 8007B7F4 2B010003 */  slti       $at, $t8, 3
/* 7C3F8 8007B7F8 142000AF */  bnez       $at, .L8007BAB8
/* 7C3FC 8007B7FC 3C01800F */   lui       $at, %hi(D_800ECDB0)
/* 7C400 8007B800 C42ACDB0 */  lwc1       $f10, %lo(D_800ECDB0)($at)
/* 7C404 8007B804 C6000124 */  lwc1       $f0, 0x124($s0)
/* 7C408 8007B808 3C013F80 */  lui        $at, 0x3f80
/* 7C40C 8007B80C 460A003C */  c.lt.s     $f0, $f10
/* 7C410 8007B810 240E0200 */  addiu      $t6, $zero, 0x200
/* 7C414 8007B814 45000005 */  bc1f       .L8007B82C
/* 7C418 8007B818 240F0400 */   addiu     $t7, $zero, 0x400
/* 7C41C 8007B81C 44818000 */  mtc1       $at, $f16
/* 7C420 8007B820 00000000 */  nop
/* 7C424 8007B824 46100480 */  add.s      $f18, $f0, $f16
/* 7C428 8007B828 E6120124 */  swc1       $f18, 0x124($s0)
.L8007B82C:
/* 7C42C 8007B82C 97B90032 */  lhu        $t9, 0x32($sp)
/* 7C430 8007B830 8E0A0150 */  lw         $t2, 0x150($s0)
/* 7C434 8007B834 3C01FFFE */  lui        $at, 0xfffe
/* 7C438 8007B838 00194100 */  sll        $t0, $t9, 4
/* 7C43C 8007B83C 01014821 */  addu       $t1, $t0, $at
/* 7C440 8007B840 314B0040 */  andi       $t3, $t2, 0x40
/* 7C444 8007B844 11600008 */  beqz       $t3, .L8007B868
/* 7C448 8007B848 AE090090 */   sw        $t1, 0x90($s0)
/* 7C44C 8007B84C 240C0080 */  addiu      $t4, $zero, 0x80
/* 7C450 8007B850 3C01800E */  lui        $at, %hi(D_800E3570)
/* 7C454 8007B854 A42C3570 */  sh         $t4, %lo(D_800E3570)($at)
/* 7C458 8007B858 3C01800E */  lui        $at, %hi(D_800E3574)
/* 7C45C 8007B85C 240D0100 */  addiu      $t5, $zero, 0x100
/* 7C460 8007B860 10000005 */  b          .L8007B878
/* 7C464 8007B864 A42D3574 */   sh        $t5, %lo(D_800E3574)($at)
.L8007B868:
/* 7C468 8007B868 3C01800E */  lui        $at, %hi(D_800E3570)
/* 7C46C 8007B86C A42E3570 */  sh         $t6, %lo(D_800E3570)($at)
/* 7C470 8007B870 3C01800E */  lui        $at, %hi(D_800E3574)
/* 7C474 8007B874 A42F3574 */  sh         $t7, %lo(D_800E3574)($at)
.L8007B878:
/* 7C478 8007B878 96180094 */  lhu        $t8, 0x94($s0)
/* 7C47C 8007B87C 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C480 8007B880 3319FFF7 */  andi       $t9, $t8, 0xfff7
/* 7C484 8007B884 0C00A1DF */  jal        func_8002877C
/* 7C488 8007B888 A6190094 */   sh        $t9, 0x94($s0)
/* 7C48C 8007B88C 860300E0 */  lh         $v1, 0xe0($s0)
/* 7C490 8007B890 24090001 */  addiu      $t1, $zero, 1
/* 7C494 8007B894 1860002B */  blez       $v1, .L8007B944
/* 7C498 8007B898 00000000 */   nop
/* 7C49C 8007B89C 4448F800 */  cfc1       $t0, $31
/* 7C4A0 8007B8A0 44C9F800 */  ctc1       $t1, $31
/* 7C4A4 8007B8A4 C6060110 */  lwc1       $f6, 0x110($s0)
/* 7C4A8 8007B8A8 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C4AC 8007B8AC 46003124 */  cvt.w.s    $f4, $f6
/* 7C4B0 8007B8B0 3C014F00 */  lui        $at, 0x4f00
/* 7C4B4 8007B8B4 4449F800 */  cfc1       $t1, $31
/* 7C4B8 8007B8B8 00000000 */  nop
/* 7C4BC 8007B8BC 31290078 */  andi       $t1, $t1, 0x78
/* 7C4C0 8007B8C0 11200012 */  beqz       $t1, .L8007B90C
/* 7C4C4 8007B8C4 00000000 */   nop
/* 7C4C8 8007B8C8 44812000 */  mtc1       $at, $f4
/* 7C4CC 8007B8CC 24090001 */  addiu      $t1, $zero, 1
/* 7C4D0 8007B8D0 46043101 */  sub.s      $f4, $f6, $f4
/* 7C4D4 8007B8D4 3C018000 */  lui        $at, 0x8000
/* 7C4D8 8007B8D8 44C9F800 */  ctc1       $t1, $31
/* 7C4DC 8007B8DC 00000000 */  nop
/* 7C4E0 8007B8E0 46002124 */  cvt.w.s    $f4, $f4
/* 7C4E4 8007B8E4 4449F800 */  cfc1       $t1, $31
/* 7C4E8 8007B8E8 00000000 */  nop
/* 7C4EC 8007B8EC 31290078 */  andi       $t1, $t1, 0x78
/* 7C4F0 8007B8F0 15200004 */  bnez       $t1, .L8007B904
/* 7C4F4 8007B8F4 00000000 */   nop
/* 7C4F8 8007B8F8 44092000 */  mfc1       $t1, $f4
/* 7C4FC 8007B8FC 10000007 */  b          .L8007B91C
/* 7C500 8007B900 01214825 */   or        $t1, $t1, $at
.L8007B904:
/* 7C504 8007B904 10000005 */  b          .L8007B91C
/* 7C508 8007B908 2409FFFF */   addiu     $t1, $zero, -1
.L8007B90C:
/* 7C50C 8007B90C 44092000 */  mfc1       $t1, $f4
/* 7C510 8007B910 00000000 */  nop
/* 7C514 8007B914 0520FFFB */  bltz       $t1, .L8007B904
/* 7C518 8007B918 00000000 */   nop
.L8007B91C:
/* 7C51C 8007B91C 44C8F800 */  ctc1       $t0, $31
/* 7C520 8007B920 312B4000 */  andi       $t3, $t1, 0x4000
/* 7C524 8007B924 11600043 */  beqz       $t3, .L8007BA34
/* 7C528 8007B928 00000000 */   nop
/* 7C52C 8007B92C 0C00A23B */  jal        func_800288EC
/* 7C530 8007B930 24050080 */   addiu     $a1, $zero, 0x80
/* 7C534 8007B934 1040003F */  beqz       $v0, .L8007BA34
/* 7C538 8007B938 00000000 */   nop
/* 7C53C 8007B93C 860300E0 */  lh         $v1, 0xe0($s0)
/* 7C540 8007B940 00000000 */  nop
.L8007B944:
/* 7C544 8007B944 1C600004 */  bgtz       $v1, .L8007B958
/* 7C548 8007B948 00000000 */   nop
/* 7C54C 8007B94C 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C550 8007B950 0C01E73A */  jal        func_80079CE8
/* 7C554 8007B954 00000000 */   nop
.L8007B958:
/* 7C558 8007B958 444CF800 */  cfc1       $t4, $31
/* 7C55C 8007B95C 240D0001 */  addiu      $t5, $zero, 1
/* 7C560 8007B960 44CDF800 */  ctc1       $t5, $31
/* 7C564 8007B964 C6080110 */  lwc1       $f8, 0x110($s0)
/* 7C568 8007B968 3C014F00 */  lui        $at, 0x4f00
/* 7C56C 8007B96C 460042A4 */  cvt.w.s    $f10, $f8
/* 7C570 8007B970 24020002 */  addiu      $v0, $zero, 2
/* 7C574 8007B974 444DF800 */  cfc1       $t5, $31
/* 7C578 8007B978 3C19800C */  lui        $t9, 0x800c
/* 7C57C 8007B97C 31AD0078 */  andi       $t5, $t5, 0x78
/* 7C580 8007B980 11A00012 */  beqz       $t5, .L8007B9CC
/* 7C584 8007B984 3C0A800C */   lui       $t2, 0x800c
/* 7C588 8007B988 44815000 */  mtc1       $at, $f10
/* 7C58C 8007B98C 240D0001 */  addiu      $t5, $zero, 1
/* 7C590 8007B990 460A4281 */  sub.s      $f10, $f8, $f10
/* 7C594 8007B994 3C018000 */  lui        $at, 0x8000
/* 7C598 8007B998 44CDF800 */  ctc1       $t5, $31
/* 7C59C 8007B99C 00000000 */  nop
/* 7C5A0 8007B9A0 460052A4 */  cvt.w.s    $f10, $f10
/* 7C5A4 8007B9A4 444DF800 */  cfc1       $t5, $31
/* 7C5A8 8007B9A8 00000000 */  nop
/* 7C5AC 8007B9AC 31AD0078 */  andi       $t5, $t5, 0x78
/* 7C5B0 8007B9B0 15A00004 */  bnez       $t5, .L8007B9C4
/* 7C5B4 8007B9B4 00000000 */   nop
/* 7C5B8 8007B9B8 440D5000 */  mfc1       $t5, $f10
/* 7C5BC 8007B9BC 10000007 */  b          .L8007B9DC
/* 7C5C0 8007B9C0 01A16825 */   or        $t5, $t5, $at
.L8007B9C4:
/* 7C5C4 8007B9C4 10000005 */  b          .L8007B9DC
/* 7C5C8 8007B9C8 240DFFFF */   addiu     $t5, $zero, -1
.L8007B9CC:
/* 7C5CC 8007B9CC 440D5000 */  mfc1       $t5, $f10
/* 7C5D0 8007B9D0 00000000 */  nop
/* 7C5D4 8007B9D4 05A0FFFB */  bltz       $t5, .L8007B9C4
/* 7C5D8 8007B9D8 00000000 */   nop
.L8007B9DC:
/* 7C5DC 8007B9DC 44CCF800 */  ctc1       $t4, $31
/* 7C5E0 8007B9E0 31AF8000 */  andi       $t7, $t5, 0x8000
/* 7C5E4 8007B9E4 11E00011 */  beqz       $t7, .L8007BA2C
/* 7C5E8 8007B9E8 00000000 */   nop
/* 7C5EC 8007B9EC A60200D0 */  sh         $v0, 0xd0($s0)
/* 7C5F0 8007B9F0 AE020080 */  sw         $v0, 0x80($s0)
/* 7C5F4 8007B9F4 AE000098 */  sw         $zero, 0x98($s0)
/* 7C5F8 8007B9F8 AE0000EC */  sw         $zero, 0xec($s0)
/* 7C5FC 8007B9FC AE0000F0 */  sw         $zero, 0xf0($s0)
/* 7C600 8007BA00 AE0000F4 */  sw         $zero, 0xf4($s0)
/* 7C604 8007BA04 8739E558 */  lh         $t9, -0x1aa8($t9)
/* 7C608 8007BA08 8E180170 */  lw         $t8, 0x170($s0)
/* 7C60C 8007BA0C 8E090174 */  lw         $t1, 0x174($s0)
/* 7C610 8007BA10 03194023 */  subu       $t0, $t8, $t9
/* 7C614 8007BA14 A6080088 */  sh         $t0, 0x88($s0)
/* 7C618 8007BA18 854AE55C */  lh         $t2, -0x1aa4($t2)
/* 7C61C 8007BA1C 00000000 */  nop
/* 7C620 8007BA20 012A5823 */  subu       $t3, $t1, $t2
/* 7C624 8007BA24 10000024 */  b          .L8007BAB8
/* 7C628 8007BA28 A60B008C */   sh        $t3, 0x8c($s0)
.L8007BA2C:
/* 7C62C 8007BA2C 100004A4 */  b          .L8007CCC0
/* 7C630 8007BA30 AE000080 */   sw        $zero, 0x80($s0)
.L8007BA34:
/* 7C634 8007BA34 8E0C0098 */  lw         $t4, 0x98($s0)
/* 7C638 8007BA38 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C63C 8007BA3C 318D0200 */  andi       $t5, $t4, 0x200
/* 7C640 8007BA40 11A0001B */  beqz       $t5, .L8007BAB0
/* 7C644 8007BA44 00000000 */   nop
/* 7C648 8007BA48 8E0E0150 */  lw         $t6, 0x150($s0)
/* 7C64C 8007BA4C 00000000 */  nop
/* 7C650 8007BA50 000E7AC0 */  sll        $t7, $t6, 0xb
/* 7C654 8007BA54 05E00016 */  bltz       $t7, .L8007BAB0
/* 7C658 8007BA58 00000000 */   nop
/* 7C65C 8007BA5C 921800DE */  lbu        $t8, 0xde($s0)
/* 7C660 8007BA60 24010001 */  addiu      $at, $zero, 1
/* 7C664 8007BA64 1701000B */  bne        $t8, $at, .L8007BA94
/* 7C668 8007BA68 00000000 */   nop
/* 7C66C 8007BA6C 96190094 */  lhu        $t9, 0x94($s0)
/* 7C670 8007BA70 24040067 */  addiu      $a0, $zero, 0x67
/* 7C674 8007BA74 3328FFF7 */  andi       $t0, $t9, 0xfff7
/* 7C678 8007BA78 0C000CD3 */  jal        func_8000334C
/* 7C67C 8007BA7C A6080094 */   sh        $t0, 0x94($s0)
/* 7C680 8007BA80 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C684 8007BA84 0C01E6AD */  jal        func_80079AB4
/* 7C688 8007BA88 00000000 */   nop
/* 7C68C 8007BA8C 1000000A */  b          .L8007BAB8
/* 7C690 8007BA90 00000000 */   nop
.L8007BA94:
/* 7C694 8007BA94 0C000CD3 */  jal        func_8000334C
/* 7C698 8007BA98 2404002F */   addiu     $a0, $zero, 0x2f
/* 7C69C 8007BA9C 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C6A0 8007BAA0 0C01E6CA */  jal        func_80079B28
/* 7C6A4 8007BAA4 00000000 */   nop
/* 7C6A8 8007BAA8 10000003 */  b          .L8007BAB8
/* 7C6AC 8007BAAC 00000000 */   nop
.L8007BAB0:
/* 7C6B0 8007BAB0 0C01EA2C */  jal        func_8007A8B0
/* 7C6B4 8007BAB4 00000000 */   nop
.L8007BAB8:
/* 7C6B8 8007BAB8 3C01800E */  lui        $at, %hi(D_800E3580)
/* 7C6BC 8007BABC 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C6C0 8007BAC0 A4203580 */  sh         $zero, %lo(D_800E3580)($at)
/* 7C6C4 8007BAC4 0C00AA88 */  jal        func_8002AA20
/* 7C6C8 8007BAC8 00002825 */   or        $a1, $zero, $zero
/* 7C6CC 8007BACC 960300D0 */  lhu        $v1, 0xd0($s0)
/* 7C6D0 8007BAD0 00000000 */  nop
/* 7C6D4 8007BAD4 28610801 */  slti       $at, $v1, 0x801
/* 7C6D8 8007BAD8 1420000E */  bnez       $at, .L8007BB14
/* 7C6DC 8007BADC 00601025 */   or        $v0, $v1, $zero
/* 7C6E0 8007BAE0 24014000 */  addiu      $at, $zero, 0x4000
/* 7C6E4 8007BAE4 10410419 */  beq        $v0, $at, .L8007CB4C
/* 7C6E8 8007BAE8 00002825 */   or        $a1, $zero, $zero
/* 7C6EC 8007BAEC 24014010 */  addiu      $at, $zero, 0x4010
/* 7C6F0 8007BAF0 104103EB */  beq        $v0, $at, .L8007CAA0
/* 7C6F4 8007BAF4 246A0001 */   addiu     $t2, $v1, 1
/* 7C6F8 8007BAF8 24014011 */  addiu      $at, $zero, 0x4011
/* 7C6FC 8007BAFC 104103F0 */  beq        $v0, $at, .L8007CAC0
/* 7C700 8007BB00 24014012 */   addiu     $at, $zero, 0x4012
/* 7C704 8007BB04 1041040C */  beq        $v0, $at, .L8007CB38
/* 7C708 8007BB08 24081003 */   addiu     $t0, $zero, 0x1003
/* 7C70C 8007BB0C 10000416 */  b          .L8007CB68
/* 7C710 8007BB10 8E090150 */   lw        $t1, 0x150($s0)
.L8007BB14:
/* 7C714 8007BB14 28410401 */  slti       $at, $v0, 0x401
/* 7C718 8007BB18 14200007 */  bnez       $at, .L8007BB38
/* 7C71C 8007BB1C 24010401 */   addiu     $at, $zero, 0x401
/* 7C720 8007BB20 1041038C */  beq        $v0, $at, .L8007C954
/* 7C724 8007BB24 24010800 */   addiu     $at, $zero, 0x800
/* 7C728 8007BB28 1041040E */  beq        $v0, $at, .L8007CB64
/* 7C72C 8007BB2C 00000000 */   nop
/* 7C730 8007BB30 1000040D */  b          .L8007CB68
/* 7C734 8007BB34 8E090150 */   lw        $t1, 0x150($s0)
.L8007BB38:
/* 7C738 8007BB38 28410201 */  slti       $at, $v0, 0x201
/* 7C73C 8007BB3C 14200005 */  bnez       $at, .L8007BB54
/* 7C740 8007BB40 24010400 */   addiu     $at, $zero, 0x400
/* 7C744 8007BB44 1041036C */  beq        $v0, $at, .L8007C8F8
/* 7C748 8007BB48 00000000 */   nop
/* 7C74C 8007BB4C 10000406 */  b          .L8007CB68
/* 7C750 8007BB50 8E090150 */   lw        $t1, 0x150($s0)
.L8007BB54:
/* 7C754 8007BB54 28410082 */  slti       $at, $v0, 0x82
/* 7C758 8007BB58 14200005 */  bnez       $at, .L8007BB70
/* 7C75C 8007BB5C 24010200 */   addiu     $at, $zero, 0x200
/* 7C760 8007BB60 10410251 */  beq        $v0, $at, .L8007C4A8
/* 7C764 8007BB64 24050040 */   addiu     $a1, $zero, 0x40
/* 7C768 8007BB68 100003FF */  b          .L8007CB68
/* 7C76C 8007BB6C 8E090150 */   lw        $t1, 0x150($s0)
.L8007BB70:
/* 7C770 8007BB70 2C410082 */  sltiu      $at, $v0, 0x82
/* 7C774 8007BB74 102003FB */  beqz       $at, .L8007CB64
/* 7C778 8007BB78 00024880 */   sll       $t1, $v0, 2
/* 7C77C 8007BB7C 3C01800F */  lui        $at, %hi(D_800ECDB4)
/* 7C780 8007BB80 00290821 */  addu       $at, $at, $t1
/* 7C784 8007BB84 8C29CDB4 */  lw         $t1, %lo(D_800ECDB4)($at)
/* 7C788 8007BB88 00000000 */  nop
/* 7C78C 8007BB8C 01200008 */  jr         $t1
/* 7C790 8007BB90 00000000 */   nop
/* 7C794 8007BB94 8E0A0098 */  lw         $t2, 0x98($s0)
/* 7C798 8007BB98 240C0200 */  addiu      $t4, $zero, 0x200
/* 7C79C 8007BB9C 314B0200 */  andi       $t3, $t2, 0x200
/* 7C7A0 8007BBA0 116003F0 */  beqz       $t3, .L8007CB64
/* 7C7A4 8007BBA4 240D0003 */   addiu     $t5, $zero, 3
/* 7C7A8 8007BBA8 A60C00D0 */  sh         $t4, 0xd0($s0)
/* 7C7AC 8007BBAC 100003ED */  b          .L8007CB64
/* 7C7B0 8007BBB0 AE0D0080 */   sw        $t5, 0x80($s0)
/* 7C7B4 8007BBB4 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C7B8 8007BBB8 0C00A23B */  jal        func_800288EC
/* 7C7BC 8007BBBC 24050070 */   addiu     $a1, $zero, 0x70
/* 7C7C0 8007BBC0 104003E8 */  beqz       $v0, .L8007CB64
/* 7C7C4 8007BBC4 00000000 */   nop
/* 7C7C8 8007BBC8 A60000D0 */  sh         $zero, 0xd0($s0)
/* 7C7CC 8007BBCC 4459F800 */  cfc1       $t9, $31
/* 7C7D0 8007BBD0 24020001 */  addiu      $v0, $zero, 1
/* 7C7D4 8007BBD4 44C2F800 */  ctc1       $v0, $31
/* 7C7D8 8007BBD8 C6100110 */  lwc1       $f16, 0x110($s0)
/* 7C7DC 8007BBDC 24030001 */  addiu      $v1, $zero, 1
/* 7C7E0 8007BBE0 460084A4 */  cvt.w.s    $f18, $f16
/* 7C7E4 8007BBE4 3C0F800E */  lui        $t7, %hi(D_800D8190)
/* 7C7E8 8007BBE8 4442F800 */  cfc1       $v0, $31
/* 7C7EC 8007BBEC 240E1003 */  addiu      $t6, $zero, 0x1003
/* 7C7F0 8007BBF0 25EF8190 */  addiu      $t7, $t7, %lo(D_800D8190)
/* 7C7F4 8007BBF4 24180001 */  addiu      $t8, $zero, 1
/* 7C7F8 8007BBF8 30420078 */  andi       $v0, $v0, 0x78
/* 7C7FC 8007BBFC AE0E0080 */  sw         $t6, 0x80($s0)
/* 7C800 8007BC00 A61800E6 */  sh         $t8, 0xe6($s0)
/* 7C804 8007BC04 AE0F00E8 */  sw         $t7, 0xe8($s0)
/* 7C808 8007BC08 A60300CE */  sh         $v1, 0xce($s0)
/* 7C80C 8007BC0C A20300DE */  sb         $v1, 0xde($s0)
/* 7C810 8007BC10 10400013 */  beqz       $v0, .L8007BC60
/* 7C814 8007BC14 A20300DF */   sb        $v1, 0xdf($s0)
/* 7C818 8007BC18 3C014F00 */  lui        $at, 0x4f00
/* 7C81C 8007BC1C 44819000 */  mtc1       $at, $f18
/* 7C820 8007BC20 24020001 */  addiu      $v0, $zero, 1
/* 7C824 8007BC24 46128481 */  sub.s      $f18, $f16, $f18
/* 7C828 8007BC28 3C018000 */  lui        $at, 0x8000
/* 7C82C 8007BC2C 44C2F800 */  ctc1       $v0, $31
/* 7C830 8007BC30 00000000 */  nop
/* 7C834 8007BC34 460094A4 */  cvt.w.s    $f18, $f18
/* 7C838 8007BC38 4442F800 */  cfc1       $v0, $31
/* 7C83C 8007BC3C 00000000 */  nop
/* 7C840 8007BC40 30420078 */  andi       $v0, $v0, 0x78
/* 7C844 8007BC44 14400004 */  bnez       $v0, .L8007BC58
/* 7C848 8007BC48 00000000 */   nop
/* 7C84C 8007BC4C 44029000 */  mfc1       $v0, $f18
/* 7C850 8007BC50 10000007 */  b          .L8007BC70
/* 7C854 8007BC54 00411025 */   or        $v0, $v0, $at
.L8007BC58:
/* 7C858 8007BC58 10000005 */  b          .L8007BC70
/* 7C85C 8007BC5C 2402FFFF */   addiu     $v0, $zero, -1
.L8007BC60:
/* 7C860 8007BC60 44029000 */  mfc1       $v0, $f18
/* 7C864 8007BC64 00000000 */  nop
/* 7C868 8007BC68 0440FFFB */  bltz       $v0, .L8007BC58
/* 7C86C 8007BC6C 00000000 */   nop
.L8007BC70:
/* 7C870 8007BC70 3048FFFF */  andi       $t0, $v0, 0xffff
/* 7C874 8007BC74 44D9F800 */  ctc1       $t9, $31
/* 7C878 8007BC78 31090040 */  andi       $t1, $t0, 0x40
/* 7C87C 8007BC7C 11200008 */  beqz       $t1, .L8007BCA0
/* 7C880 8007BC80 AE080150 */   sw        $t0, 0x150($s0)
/* 7C884 8007BC84 240A0080 */  addiu      $t2, $zero, 0x80
/* 7C888 8007BC88 3C01800E */  lui        $at, %hi(D_800E3570)
/* 7C88C 8007BC8C A42A3570 */  sh         $t2, %lo(D_800E3570)($at)
/* 7C890 8007BC90 3C01800E */  lui        $at, %hi(D_800E3574)
/* 7C894 8007BC94 240B0100 */  addiu      $t3, $zero, 0x100
/* 7C898 8007BC98 10000007 */  b          .L8007BCB8
/* 7C89C 8007BC9C A42B3574 */   sh        $t3, %lo(D_800E3574)($at)
.L8007BCA0:
/* 7C8A0 8007BCA0 240C0200 */  addiu      $t4, $zero, 0x200
/* 7C8A4 8007BCA4 3C01800E */  lui        $at, %hi(D_800E3570)
/* 7C8A8 8007BCA8 A42C3570 */  sh         $t4, %lo(D_800E3570)($at)
/* 7C8AC 8007BCAC 3C01800E */  lui        $at, %hi(D_800E3574)
/* 7C8B0 8007BCB0 240D0400 */  addiu      $t5, $zero, 0x400
/* 7C8B4 8007BCB4 A42D3574 */  sh         $t5, %lo(D_800E3574)($at)
.L8007BCB8:
/* 7C8B8 8007BCB8 8E030150 */  lw         $v1, 0x150($s0)
/* 7C8BC 8007BCBC 3C19800E */  lui        $t9, 0x800e
/* 7C8C0 8007BCC0 306E0030 */  andi       $t6, $v1, 0x30
/* 7C8C4 8007BCC4 05C10003 */  bgez       $t6, .L8007BCD4
/* 7C8C8 8007BCC8 000E7903 */   sra       $t7, $t6, 4
/* 7C8CC 8007BCCC 25C1000F */  addiu      $at, $t6, 0xf
/* 7C8D0 8007BCD0 00017903 */  sra        $t7, $at, 4
.L8007BCD4:
/* 7C8D4 8007BCD4 000FC040 */  sll        $t8, $t7, 1
/* 7C8D8 8007BCD8 0338C821 */  addu       $t9, $t9, $t8
/* 7C8DC 8007BCDC 97398258 */  lhu        $t9, -0x7da8($t9)
/* 7C8E0 8007BCE0 30643000 */  andi       $a0, $v1, 0x3000
/* 7C8E4 8007BCE4 10800018 */  beqz       $a0, .L8007BD48
/* 7C8E8 8007BCE8 A61900E0 */   sh        $t9, 0xe0($s0)
/* 7C8EC 8007BCEC 96080094 */  lhu        $t0, 0x94($s0)
/* 7C8F0 8007BCF0 24011000 */  addiu      $at, $zero, 0x1000
/* 7C8F4 8007BCF4 35090001 */  ori        $t1, $t0, 1
/* 7C8F8 8007BCF8 10810006 */  beq        $a0, $at, .L8007BD14
/* 7C8FC 8007BCFC A6090094 */   sh        $t1, 0x94($s0)
/* 7C900 8007BD00 24012000 */  addiu      $at, $zero, 0x2000
/* 7C904 8007BD04 10810009 */  beq        $a0, $at, .L8007BD2C
/* 7C908 8007BD08 240A0006 */   addiu     $t2, $zero, 6
/* 7C90C 8007BD0C 1000000F */  b          .L8007BD4C
/* 7C910 8007BD10 306C0008 */   andi      $t4, $v1, 8
.L8007BD14:
/* 7C914 8007BD14 3C013F40 */  lui        $at, 0x3f40
/* 7C918 8007BD18 44813000 */  mtc1       $at, $f6
/* 7C91C 8007BD1C 8E030150 */  lw         $v1, 0x150($s0)
/* 7C920 8007BD20 A20000DF */  sb         $zero, 0xdf($s0)
/* 7C924 8007BD24 10000008 */  b          .L8007BD48
/* 7C928 8007BD28 E60600B4 */   swc1      $f6, 0xb4($s0)
.L8007BD2C:
/* 7C92C 8007BD2C 3C013FA0 */  lui        $at, 0x3fa0
/* 7C930 8007BD30 44812000 */  mtc1       $at, $f4
/* 7C934 8007BD34 240B0040 */  addiu      $t3, $zero, 0x40
/* 7C938 8007BD38 8E030150 */  lw         $v1, 0x150($s0)
/* 7C93C 8007BD3C A20A00DE */  sb         $t2, 0xde($s0)
/* 7C940 8007BD40 A20B00DF */  sb         $t3, 0xdf($s0)
/* 7C944 8007BD44 E60400B4 */  swc1       $f4, 0xb4($s0)
.L8007BD48:
/* 7C948 8007BD48 306C0008 */  andi       $t4, $v1, 8
.L8007BD4C:
/* 7C94C 8007BD4C 11800005 */  beqz       $t4, .L8007BD64
/* 7C950 8007BD50 3C0A800C */   lui       $t2, 0x800c
/* 7C954 8007BD54 8E0D0080 */  lw         $t5, 0x80($s0)
/* 7C958 8007BD58 8E030150 */  lw         $v1, 0x150($s0)
/* 7C95C 8007BD5C 35AE0020 */  ori        $t6, $t5, 0x20
/* 7C960 8007BD60 AE0E0080 */  sw         $t6, 0x80($s0)
.L8007BD64:
/* 7C964 8007BD64 30620F00 */  andi       $v0, $v1, 0xf00
/* 7C968 8007BD68 1040000E */  beqz       $v0, .L8007BDA4
/* 7C96C 8007BD6C 3C0C800C */   lui       $t4, 0x800c
/* 7C970 8007BD70 960F0094 */  lhu        $t7, 0x94($s0)
/* 7C974 8007BD74 3C09800D */  lui        $t1, 0x800d
/* 7C978 8007BD78 35F80200 */  ori        $t8, $t7, 0x200
/* 7C97C 8007BD7C A6180094 */  sh         $t8, 0x94($s0)
/* 7C980 8007BD80 04410003 */  bgez       $v0, .L8007BD90
/* 7C984 8007BD84 0002CA03 */   sra       $t9, $v0, 8
/* 7C988 8007BD88 244100FF */  addiu      $at, $v0, 0xff
/* 7C98C 8007BD8C 0001CA03 */  sra        $t9, $at, 8
.L8007BD90:
/* 7C990 8007BD90 00194080 */  sll        $t0, $t9, 2
/* 7C994 8007BD94 01284821 */  addu       $t1, $t1, $t0
/* 7C998 8007BD98 8D291938 */  lw         $t1, 0x1938($t1)
/* 7C99C 8007BD9C 00000000 */  nop
/* 7C9A0 8007BDA0 AE09018C */  sw         $t1, 0x18c($s0)
.L8007BDA4:
/* 7C9A4 8007BDA4 854AE558 */  lh         $t2, -0x1aa8($t2)
/* 7C9A8 8007BDA8 860B0088 */  lh         $t3, 0x88($s0)
/* 7C9AC 8007BDAC 860D008C */  lh         $t5, 0x8c($s0)
/* 7C9B0 8007BDB0 014B1021 */  addu       $v0, $t2, $t3
/* 7C9B4 8007BDB4 AE020170 */  sw         $v0, 0x170($s0)
/* 7C9B8 8007BDB8 858CE55C */  lh         $t4, -0x1aa4($t4)
/* 7C9BC 8007BDBC 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C9C0 8007BDC0 018D1821 */  addu       $v1, $t4, $t5
/* 7C9C4 8007BDC4 AE030174 */  sw         $v1, 0x174($s0)
/* 7C9C8 8007BDC8 AE020180 */  sw         $v0, 0x180($s0)
/* 7C9CC 8007BDCC 0C01E604 */  jal        func_80079810
/* 7C9D0 8007BDD0 AE030184 */   sw        $v1, 0x184($s0)
/* 7C9D4 8007BDD4 10000363 */  b          .L8007CB64
/* 7C9D8 8007BDD8 A60000D0 */   sh        $zero, 0xd0($s0)
/* 7C9DC 8007BDDC 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C9E0 8007BDE0 0C01E604 */  jal        func_80079810
/* 7C9E4 8007BDE4 00000000 */   nop
/* 7C9E8 8007BDE8 8E0E0154 */  lw         $t6, 0x154($s0)
/* 7C9EC 8007BDEC 97A40032 */  lhu        $a0, 0x32($sp)
/* 7C9F0 8007BDF0 3C050001 */  lui        $a1, 1
/* 7C9F4 8007BDF4 25CF0001 */  addiu      $t7, $t6, 1
/* 7C9F8 8007BDF8 AE0F0154 */  sw         $t7, 0x154($s0)
/* 7C9FC 8007BDFC 34A58000 */  ori        $a1, $a1, 0x8000
/* 7CA00 8007BE00 0C01E3FC */  jal        func_80078FF0
/* 7CA04 8007BE04 24062C00 */   addiu     $a2, $zero, 0x2c00
/* 7CA08 8007BE08 3C18800E */  lui        $t8, %hi(D_800E3584)
/* 7CA0C 8007BE0C 8F183584 */  lw         $t8, %lo(D_800E3584)($t8)
/* 7CA10 8007BE10 3C01000C */  lui        $at, 0xc
/* 7CA14 8007BE14 0301C824 */  and        $t9, $t8, $at
/* 7CA18 8007BE18 13200005 */  beqz       $t9, .L8007BE30
/* 7CA1C 8007BE1C 00000000 */   nop
/* 7CA20 8007BE20 8E080080 */  lw         $t0, 0x80($s0)
/* 7CA24 8007BE24 00000000 */  nop
/* 7CA28 8007BE28 39090020 */  xori       $t1, $t0, 0x20
/* 7CA2C 8007BE2C AE090080 */  sw         $t1, 0x80($s0)
.L8007BE30:
/* 7CA30 8007BE30 8E0A00F0 */  lw         $t2, 0xf0($s0)
/* 7CA34 8007BE34 00000000 */  nop
/* 7CA38 8007BE38 0541034A */  bgez       $t2, .L8007CB64
/* 7CA3C 8007BE3C 00000000 */   nop
/* 7CA40 8007BE40 8E0B0098 */  lw         $t3, 0x98($s0)
/* 7CA44 8007BE44 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CA48 8007BE48 316C0020 */  andi       $t4, $t3, 0x20
/* 7CA4C 8007BE4C 11800345 */  beqz       $t4, .L8007CB64
/* 7CA50 8007BE50 00000000 */   nop
/* 7CA54 8007BE54 0C01E63B */  jal        func_800798EC
/* 7CA58 8007BE58 00000000 */   nop
/* 7CA5C 8007BE5C 10000342 */  b          .L8007CB68
/* 7CA60 8007BE60 8E090150 */   lw        $t1, 0x150($s0)
/* 7CA64 8007BE64 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CA68 8007BE68 0C01E63B */  jal        func_800798EC
/* 7CA6C 8007BE6C 00000000 */   nop
/* 7CA70 8007BE70 8E020154 */  lw         $v0, 0x154($s0)
/* 7CA74 8007BE74 00002825 */  or         $a1, $zero, $zero
/* 7CA78 8007BE78 28410258 */  slti       $at, $v0, 0x258
/* 7CA7C 8007BE7C 10200002 */  beqz       $at, .L8007BE88
/* 7CA80 8007BE80 244D0001 */   addiu     $t5, $v0, 1
/* 7CA84 8007BE84 AE0D0154 */  sw         $t5, 0x154($s0)
.L8007BE88:
/* 7CA88 8007BE88 8E0400EC */  lw         $a0, 0xec($s0)
/* 7CA8C 8007BE8C 0C00A607 */  jal        func_8002981C
/* 7CA90 8007BE90 24064000 */   addiu     $a2, $zero, 0x4000
/* 7CA94 8007BE94 AE0200EC */  sw         $v0, 0xec($s0)
/* 7CA98 8007BE98 3C0E800E */  lui        $t6, %hi(D_800E3584)
/* 7CA9C 8007BE9C 8DCE3584 */  lw         $t6, %lo(D_800E3584)($t6)
/* 7CAA0 8007BEA0 3C01000C */  lui        $at, 0xc
/* 7CAA4 8007BEA4 01C17824 */  and        $t7, $t6, $at
/* 7CAA8 8007BEA8 11E00005 */  beqz       $t7, .L8007BEC0
/* 7CAAC 8007BEAC 240A0080 */   addiu     $t2, $zero, 0x80
/* 7CAB0 8007BEB0 8E180080 */  lw         $t8, 0x80($s0)
/* 7CAB4 8007BEB4 00000000 */  nop
/* 7CAB8 8007BEB8 3B190020 */  xori       $t9, $t8, 0x20
/* 7CABC 8007BEBC AE190080 */  sw         $t9, 0x80($s0)
.L8007BEC0:
/* 7CAC0 8007BEC0 8E080098 */  lw         $t0, 0x98($s0)
/* 7CAC4 8007BEC4 00000000 */  nop
/* 7CAC8 8007BEC8 31090040 */  andi       $t1, $t0, 0x40
/* 7CACC 8007BECC 11200325 */  beqz       $t1, .L8007CB64
/* 7CAD0 8007BED0 00000000 */   nop
/* 7CAD4 8007BED4 10000323 */  b          .L8007CB64
/* 7CAD8 8007BED8 A60A00D0 */   sh        $t2, 0xd0($s0)
/* 7CADC 8007BEDC 8E0C0080 */  lw         $t4, 0x80($s0)
/* 7CAE0 8007BEE0 3C01FFFE */  lui        $at, 0xfffe
/* 7CAE4 8007BEE4 3421FFFF */  ori        $at, $at, 0xffff
/* 7CAE8 8007BEE8 01816824 */  and        $t5, $t4, $at
/* 7CAEC 8007BEEC 3C010002 */  lui        $at, 2
/* 7CAF0 8007BEF0 3C18800E */  lui        $t8, %hi(D_800D81A0)
/* 7CAF4 8007BEF4 246B0001 */  addiu      $t3, $v1, 1
/* 7CAF8 8007BEF8 01A17825 */  or         $t7, $t5, $at
/* 7CAFC 8007BEFC AE0D0080 */  sw         $t5, 0x80($s0)
/* 7CB00 8007BF00 271881A0 */  addiu      $t8, $t8, %lo(D_800D81A0)
/* 7CB04 8007BF04 24190001 */  addiu      $t9, $zero, 1
/* 7CB08 8007BF08 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 7CB0C 8007BF0C AE0F0080 */  sw         $t7, 0x80($s0)
/* 7CB10 8007BF10 A61900E6 */  sh         $t9, 0xe6($s0)
/* 7CB14 8007BF14 AE1800E8 */  sw         $t8, 0xe8($s0)
/* 7CB18 8007BF18 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 7CB1C 8007BF1C 3C01FFF8 */  lui        $at, 0xfff8
/* 7CB20 8007BF20 34218001 */  ori        $at, $at, 0x8001
/* 7CB24 8007BF24 0061082A */  slt        $at, $v1, $at
/* 7CB28 8007BF28 14200002 */  bnez       $at, .L8007BF34
/* 7CB2C 8007BF2C 2468C000 */   addiu     $t0, $v1, -0x4000
/* 7CB30 8007BF30 AE0800F0 */  sw         $t0, 0xf0($s0)
.L8007BF34:
/* 7CB34 8007BF34 8E090098 */  lw         $t1, 0x98($s0)
/* 7CB38 8007BF38 AE0000EC */  sw         $zero, 0xec($s0)
/* 7CB3C 8007BF3C 312A0020 */  andi       $t2, $t1, 0x20
/* 7CB40 8007BF40 11400308 */  beqz       $t2, .L8007CB64
/* 7CB44 8007BF44 00000000 */   nop
/* 7CB48 8007BF48 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CB4C 8007BF4C 0C01E63B */  jal        func_800798EC
/* 7CB50 8007BF50 00000000 */   nop
/* 7CB54 8007BF54 10000304 */  b          .L8007CB68
/* 7CB58 8007BF58 8E090150 */   lw        $t1, 0x150($s0)
/* 7CB5C 8007BF5C 8E0C0080 */  lw         $t4, 0x80($s0)
/* 7CB60 8007BF60 3C01FFFE */  lui        $at, 0xfffe
/* 7CB64 8007BF64 3421FFFF */  ori        $at, $at, 0xffff
/* 7CB68 8007BF68 01816824 */  and        $t5, $t4, $at
/* 7CB6C 8007BF6C 3C010002 */  lui        $at, 2
/* 7CB70 8007BF70 3C18800E */  lui        $t8, %hi(D_800D81B8)
/* 7CB74 8007BF74 246B0001 */  addiu      $t3, $v1, 1
/* 7CB78 8007BF78 01A17825 */  or         $t7, $t5, $at
/* 7CB7C 8007BF7C AE0D0080 */  sw         $t5, 0x80($s0)
/* 7CB80 8007BF80 271881B8 */  addiu      $t8, $t8, %lo(D_800D81B8)
/* 7CB84 8007BF84 24190001 */  addiu      $t9, $zero, 1
/* 7CB88 8007BF88 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 7CB8C 8007BF8C AE0F0080 */  sw         $t7, 0x80($s0)
/* 7CB90 8007BF90 A61900E6 */  sh         $t9, 0xe6($s0)
/* 7CB94 8007BF94 AE1800E8 */  sw         $t8, 0xe8($s0)
/* 7CB98 8007BF98 8E0300EC */  lw         $v1, 0xec($s0)
/* 7CB9C 8007BF9C 00002825 */  or         $a1, $zero, $zero
/* 7CBA0 8007BFA0 18600006 */  blez       $v1, .L8007BFBC
/* 7CBA4 8007BFA4 00000000 */   nop
/* 7CBA8 8007BFA8 8E080098 */  lw         $t0, 0x98($s0)
/* 7CBAC 8007BFAC 00000000 */  nop
/* 7CBB0 8007BFB0 31090008 */  andi       $t1, $t0, 8
/* 7CBB4 8007BFB4 15200008 */  bnez       $t1, .L8007BFD8
/* 7CBB8 8007BFB8 00036023 */   negu      $t4, $v1
.L8007BFBC:
/* 7CBBC 8007BFBC 0461000B */  bgez       $v1, .L8007BFEC
/* 7CBC0 8007BFC0 00000000 */   nop
/* 7CBC4 8007BFC4 8E0A0098 */  lw         $t2, 0x98($s0)
/* 7CBC8 8007BFC8 00000000 */  nop
/* 7CBCC 8007BFCC 314B0004 */  andi       $t3, $t2, 4
/* 7CBD0 8007BFD0 11600006 */  beqz       $t3, .L8007BFEC
/* 7CBD4 8007BFD4 00036023 */   negu      $t4, $v1
.L8007BFD8:
/* 7CBD8 8007BFD8 05810003 */  bgez       $t4, .L8007BFE8
/* 7CBDC 8007BFDC 000C6843 */   sra       $t5, $t4, 1
/* 7CBE0 8007BFE0 25810001 */  addiu      $at, $t4, 1
/* 7CBE4 8007BFE4 00016843 */  sra        $t5, $at, 1
.L8007BFE8:
/* 7CBE8 8007BFE8 AE0D00EC */  sw         $t5, 0xec($s0)
.L8007BFEC:
/* 7CBEC 8007BFEC 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 7CBF0 8007BFF0 00000000 */  nop
/* 7CBF4 8007BFF4 18600008 */  blez       $v1, .L8007C018
/* 7CBF8 8007BFF8 00000000 */   nop
/* 7CBFC 8007BFFC 8E0E0098 */  lw         $t6, 0x98($s0)
/* 7CC00 8007C000 00000000 */  nop
/* 7CC04 8007C004 31CF0010 */  andi       $t7, $t6, 0x10
/* 7CC08 8007C008 11E00003 */  beqz       $t7, .L8007C018
/* 7CC0C 8007C00C 00000000 */   nop
/* 7CC10 8007C010 AE0000F0 */  sw         $zero, 0xf0($s0)
/* 7CC14 8007C014 00001825 */  or         $v1, $zero, $zero
.L8007C018:
/* 7CC18 8007C018 0461000A */  bgez       $v1, .L8007C044
/* 7CC1C 8007C01C 00000000 */   nop
/* 7CC20 8007C020 8E180098 */  lw         $t8, 0x98($s0)
/* 7CC24 8007C024 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CC28 8007C028 33190020 */  andi       $t9, $t8, 0x20
/* 7CC2C 8007C02C 13200005 */  beqz       $t9, .L8007C044
/* 7CC30 8007C030 00000000 */   nop
/* 7CC34 8007C034 0C01E63B */  jal        func_800798EC
/* 7CC38 8007C038 00000000 */   nop
/* 7CC3C 8007C03C 100002CA */  b          .L8007CB68
/* 7CC40 8007C040 8E090150 */   lw        $t1, 0x150($s0)
.L8007C044:
/* 7CC44 8007C044 8E0400EC */  lw         $a0, 0xec($s0)
/* 7CC48 8007C048 0C00A607 */  jal        func_8002981C
/* 7CC4C 8007C04C 24061000 */   addiu     $a2, $zero, 0x1000
/* 7CC50 8007C050 8E0800F0 */  lw         $t0, 0xf0($s0)
/* 7CC54 8007C054 3C01FFFE */  lui        $at, 0xfffe
/* 7CC58 8007C058 2509C800 */  addiu      $t1, $t0, -0x3800
/* 7CC5C 8007C05C 0121082A */  slt        $at, $t1, $at
/* 7CC60 8007C060 AE0200EC */  sw         $v0, 0xec($s0)
/* 7CC64 8007C064 102002BF */  beqz       $at, .L8007CB64
/* 7CC68 8007C068 AE0900F0 */   sw        $t1, 0xf0($s0)
/* 7CC6C 8007C06C 960B00D0 */  lhu        $t3, 0xd0($s0)
/* 7CC70 8007C070 00000000 */  nop
/* 7CC74 8007C074 256C0001 */  addiu      $t4, $t3, 1
/* 7CC78 8007C078 100002BA */  b          .L8007CB64
/* 7CC7C 8007C07C A60C00D0 */   sh        $t4, 0xd0($s0)
/* 7CC80 8007C080 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CC84 8007C084 0C01E661 */  jal        func_80079984
/* 7CC88 8007C088 00000000 */   nop
/* 7CC8C 8007C08C 86070090 */  lh         $a3, 0x90($s0)
/* 7CC90 8007C090 960D00D0 */  lhu        $t5, 0xd0($s0)
/* 7CC94 8007C094 3C014080 */  lui        $at, 0x4080
/* 7CC98 8007C098 44815000 */  mtc1       $at, $f10
/* 7CC9C 8007C09C C6080114 */  lwc1       $f8, 0x114($s0)
/* 7CCA0 8007C0A0 24E7FFF8 */  addiu      $a3, $a3, -8
/* 7CCA4 8007C0A4 00077C00 */  sll        $t7, $a3, 0x10
/* 7CCA8 8007C0A8 86050088 */  lh         $a1, 0x88($s0)
/* 7CCAC 8007C0AC 8606008C */  lh         $a2, 0x8c($s0)
/* 7CCB0 8007C0B0 25AE0001 */  addiu      $t6, $t5, 1
/* 7CCB4 8007C0B4 A60E00D0 */  sh         $t6, 0xd0($s0)
/* 7CCB8 8007C0B8 000F3C03 */  sra        $a3, $t7, 0x10
/* 7CCBC 8007C0BC 0C00FC4E */  jal        func_8003F138
/* 7CCC0 8007C0C0 460A4303 */   div.s     $f12, $f8, $f10
/* 7CCC4 8007C0C4 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CCC8 8007C0C8 0C01E4DE */  jal        func_80079378
/* 7CCCC 8007C0CC 00000000 */   nop
/* 7CCD0 8007C0D0 8E020154 */  lw         $v0, 0x154($s0)
/* 7CCD4 8007C0D4 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CCD8 8007C0D8 04410005 */  bgez       $v0, .L8007C0F0
/* 7CCDC 8007C0DC 00000000 */   nop
/* 7CCE0 8007C0E0 0C01E604 */  jal        func_80079810
/* 7CCE4 8007C0E4 00000000 */   nop
/* 7CCE8 8007C0E8 1000029F */  b          .L8007CB68
/* 7CCEC 8007C0EC 8E090150 */   lw        $t1, 0x150($s0)
.L8007C0F0:
/* 7CCF0 8007C0F0 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 7CCF4 8007C0F4 2459FFFF */  addiu      $t9, $v0, -1
/* 7CCF8 8007C0F8 04610006 */  bgez       $v1, .L8007C114
/* 7CCFC 8007C0FC AE190154 */   sw        $t9, 0x154($s0)
/* 7CD00 8007C100 8E080098 */  lw         $t0, 0x98($s0)
/* 7CD04 8007C104 00000000 */  nop
/* 7CD08 8007C108 31090020 */  andi       $t1, $t0, 0x20
/* 7CD0C 8007C10C 15200006 */  bnez       $t1, .L8007C128
/* 7CD10 8007C110 00000000 */   nop
.L8007C114:
/* 7CD14 8007C114 8E020098 */  lw         $v0, 0x98($s0)
/* 7CD18 8007C118 1860000B */  blez       $v1, .L8007C148
/* 7CD1C 8007C11C 304A0010 */   andi      $t2, $v0, 0x10
/* 7CD20 8007C120 11400009 */  beqz       $t2, .L8007C148
/* 7CD24 8007C124 00000000 */   nop
.L8007C128:
/* 7CD28 8007C128 8E0B00EC */  lw         $t3, 0xec($s0)
/* 7CD2C 8007C12C 8E020098 */  lw         $v0, 0x98($s0)
/* 7CD30 8007C130 AE0000F0 */  sw         $zero, 0xf0($s0)
/* 7CD34 8007C134 05610003 */  bgez       $t3, .L8007C144
/* 7CD38 8007C138 000B6043 */   sra       $t4, $t3, 1
/* 7CD3C 8007C13C 25610001 */  addiu      $at, $t3, 1
/* 7CD40 8007C140 00016043 */  sra        $t4, $at, 1
.L8007C144:
/* 7CD44 8007C144 AE0C00EC */  sw         $t4, 0xec($s0)
.L8007C148:
/* 7CD48 8007C148 8E0300EC */  lw         $v1, 0xec($s0)
/* 7CD4C 8007C14C 304D0004 */  andi       $t5, $v0, 4
/* 7CD50 8007C150 04610003 */  bgez       $v1, .L8007C160
/* 7CD54 8007C154 00000000 */   nop
/* 7CD58 8007C158 15A00005 */  bnez       $t5, .L8007C170
/* 7CD5C 8007C15C 00000000 */   nop
.L8007C160:
/* 7CD60 8007C160 1860000B */  blez       $v1, .L8007C190
/* 7CD64 8007C164 304E0008 */   andi      $t6, $v0, 8
/* 7CD68 8007C168 11C0000A */  beqz       $t6, .L8007C194
/* 7CD6C 8007C16C 30590001 */   andi      $t9, $v0, 1
.L8007C170:
/* 7CD70 8007C170 8E0F00F0 */  lw         $t7, 0xf0($s0)
/* 7CD74 8007C174 8E020098 */  lw         $v0, 0x98($s0)
/* 7CD78 8007C178 AE0000EC */  sw         $zero, 0xec($s0)
/* 7CD7C 8007C17C 05E10003 */  bgez       $t7, .L8007C18C
/* 7CD80 8007C180 000FC043 */   sra       $t8, $t7, 1
/* 7CD84 8007C184 25E10001 */  addiu      $at, $t7, 1
/* 7CD88 8007C188 0001C043 */  sra        $t8, $at, 1
.L8007C18C:
/* 7CD8C 8007C18C AE1800F0 */  sw         $t8, 0xf0($s0)
.L8007C190:
/* 7CD90 8007C190 30590001 */  andi       $t9, $v0, 1
.L8007C194:
/* 7CD94 8007C194 13200013 */  beqz       $t9, .L8007C1E4
/* 7CD98 8007C198 3C014004 */   lui       $at, 0x4004
/* 7CD9C 8007C19C C6120114 */  lwc1       $f18, 0x114($s0)
/* 7CDA0 8007C1A0 44818800 */  mtc1       $at, $f17
/* 7CDA4 8007C1A4 44808000 */  mtc1       $zero, $f16
/* 7CDA8 8007C1A8 460091A1 */  cvt.d.s    $f6, $f18
/* 7CDAC 8007C1AC 4626803C */  c.lt.d     $f16, $f6
/* 7CDB0 8007C1B0 97A50032 */  lhu        $a1, 0x32($sp)
/* 7CDB4 8007C1B4 45000003 */  bc1f       .L8007C1C4
/* 7CDB8 8007C1B8 00000000 */   nop
/* 7CDBC 8007C1BC 0C000DB2 */  jal        func_800036C8
/* 7CDC0 8007C1C0 2404002D */   addiu     $a0, $zero, 0x2d
.L8007C1C4:
/* 7CDC4 8007C1C4 8E090160 */  lw         $t1, 0x160($s0)
/* 7CDC8 8007C1C8 860B008C */  lh         $t3, 0x8c($s0)
/* 7CDCC 8007C1CC 24080008 */  addiu      $t0, $zero, 8
/* 7CDD0 8007C1D0 00095023 */  negu       $t2, $t1
/* 7CDD4 8007C1D4 256C0003 */  addiu      $t4, $t3, 3
/* 7CDD8 8007C1D8 AE080154 */  sw         $t0, 0x154($s0)
/* 7CDDC 8007C1DC AE0A0160 */  sw         $t2, 0x160($s0)
/* 7CDE0 8007C1E0 A60C008C */  sh         $t4, 0x8c($s0)
.L8007C1E4:
/* 7CDE4 8007C1E4 8E020154 */  lw         $v0, 0x154($s0)
/* 7CDE8 8007C1E8 24010018 */  addiu      $at, $zero, 0x18
/* 7CDEC 8007C1EC 1441002C */  bne        $v0, $at, .L8007C2A0
/* 7CDF0 8007C1F0 24010008 */   addiu     $at, $zero, 8
/* 7CDF4 8007C1F4 C6000114 */  lwc1       $f0, 0x114($s0)
/* 7CDF8 8007C1F8 3C014004 */  lui        $at, 0x4004
/* 7CDFC 8007C1FC 44812800 */  mtc1       $at, $f5
/* 7CE00 8007C200 44802000 */  mtc1       $zero, $f4
/* 7CE04 8007C204 46000221 */  cvt.d.s    $f8, $f0
/* 7CE08 8007C208 4628203C */  c.lt.d     $f4, $f8
/* 7CE0C 8007C20C 3C0E800E */  lui        $t6, 0x800e
/* 7CE10 8007C210 45000022 */  bc1f       .L8007C29C
/* 7CE14 8007C214 24180084 */   addiu     $t8, $zero, 0x84
/* 7CE18 8007C218 3C0141A0 */  lui        $at, 0x41a0
/* 7CE1C 8007C21C 44815000 */  mtc1       $at, $f10
/* 7CE20 8007C220 C60600B4 */  lwc1       $f6, 0xb4($s0)
/* 7CE24 8007C224 460A0482 */  mul.s      $f18, $f0, $f10
/* 7CE28 8007C228 95CE3570 */  lhu        $t6, 0x3570($t6)
/* 7CE2C 8007C22C 8E0D0080 */  lw         $t5, 0x80($s0)
/* 7CE30 8007C230 24190007 */  addiu      $t9, $zero, 7
/* 7CE34 8007C234 4448F800 */  cfc1       $t0, $31
/* 7CE38 8007C238 3C0C0004 */  lui        $t4, 4
/* 7CE3C 8007C23C 35010003 */  ori        $at, $t0, 3
/* 7CE40 8007C240 38210002 */  xori       $at, $at, 2
/* 7CE44 8007C244 44C1F800 */  ctc1       $at, $31
/* 7CE48 8007C248 3C0148A0 */  lui        $at, 0x48a0
/* 7CE4C 8007C24C 46009424 */  cvt.w.s    $f16, $f18
/* 7CE50 8007C250 44812000 */  mtc1       $at, $f4
/* 7CE54 8007C254 44C8F800 */  ctc1       $t0, $31
/* 7CE58 8007C258 44098000 */  mfc1       $t1, $f16
/* 7CE5C 8007C25C 46043202 */  mul.s      $f8, $f6, $f4
/* 7CE60 8007C260 01AE7825 */  or         $t7, $t5, $t6
/* 7CE64 8007C264 8E020154 */  lw         $v0, 0x154($s0)
/* 7CE68 8007C268 AE0F0080 */  sw         $t7, 0x80($s0)
/* 7CE6C 8007C26C 444AF800 */  cfc1       $t2, $31
/* 7CE70 8007C270 A21800DA */  sb         $t8, 0xda($s0)
/* 7CE74 8007C274 35410003 */  ori        $at, $t2, 3
/* 7CE78 8007C278 38210002 */  xori       $at, $at, 2
/* 7CE7C 8007C27C 44C1F800 */  ctc1       $at, $31
/* 7CE80 8007C280 A21900DB */  sb         $t9, 0xdb($s0)
/* 7CE84 8007C284 460042A4 */  cvt.w.s    $f10, $f8
/* 7CE88 8007C288 AE0C00FC */  sw         $t4, 0xfc($s0)
/* 7CE8C 8007C28C 440B5000 */  mfc1       $t3, $f10
/* 7CE90 8007C290 44CAF800 */  ctc1       $t2, $31
/* 7CE94 8007C294 A60900E4 */  sh         $t1, 0xe4($s0)
/* 7CE98 8007C298 AE0B00F8 */  sw         $t3, 0xf8($s0)
.L8007C29C:
/* 7CE9C 8007C29C 24010008 */  addiu      $at, $zero, 8
.L8007C2A0:
/* 7CEA0 8007C2A0 14410230 */  bne        $v0, $at, .L8007CB64
/* 7CEA4 8007C2A4 3C0E800E */   lui       $t6, %hi(D_800E3570)
/* 7CEA8 8007C2A8 95CE3570 */  lhu        $t6, %lo(D_800E3570)($t6)
/* 7CEAC 8007C2AC 8E0D0080 */  lw         $t5, 0x80($s0)
/* 7CEB0 8007C2B0 240FFFFF */  addiu      $t7, $zero, -1
/* 7CEB4 8007C2B4 01EEC023 */  subu       $t8, $t7, $t6
/* 7CEB8 8007C2B8 3C08800E */  lui        $t0, %hi(D_800D81C8)
/* 7CEBC 8007C2BC 01B8C824 */  and        $t9, $t5, $t8
/* 7CEC0 8007C2C0 250881C8 */  addiu      $t0, $t0, %lo(D_800D81C8)
/* 7CEC4 8007C2C4 24090001 */  addiu      $t1, $zero, 1
/* 7CEC8 8007C2C8 332B0020 */  andi       $t3, $t9, 0x20
/* 7CECC 8007C2CC AE190080 */  sw         $t9, 0x80($s0)
/* 7CED0 8007C2D0 A60900E6 */  sh         $t1, 0xe6($s0)
/* 7CED4 8007C2D4 11600004 */  beqz       $t3, .L8007C2E8
/* 7CED8 8007C2D8 AE0800E8 */   sw        $t0, 0xe8($s0)
/* 7CEDC 8007C2DC 3C0C0200 */  lui        $t4, 0x200
/* 7CEE0 8007C2E0 10000220 */  b          .L8007CB64
/* 7CEE4 8007C2E4 AE0C0158 */   sw        $t4, 0x158($s0)
.L8007C2E8:
/* 7CEE8 8007C2E8 1000021E */  b          .L8007CB64
/* 7CEEC 8007C2EC AE000158 */   sw        $zero, 0x158($s0)
/* 7CEF0 8007C2F0 246F0001 */  addiu      $t7, $v1, 1
/* 7CEF4 8007C2F4 A60F00D0 */  sh         $t7, 0xd0($s0)
/* 7CEF8 8007C2F8 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CEFC 8007C2FC 0C01E332 */  jal        func_80078CC8
/* 7CF00 8007C300 00002825 */   or        $a1, $zero, $zero
/* 7CF04 8007C304 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CF08 8007C308 0C01EAD1 */  jal        func_8007AB44
/* 7CF0C 8007C30C 00000000 */   nop
/* 7CF10 8007C310 8E0E0154 */  lw         $t6, 0x154($s0)
/* 7CF14 8007C314 00000000 */  nop
/* 7CF18 8007C318 05C10212 */  bgez       $t6, .L8007CB64
/* 7CF1C 8007C31C 00000000 */   nop
/* 7CF20 8007C320 10000211 */  b          .L8007CB68
/* 7CF24 8007C324 8E090150 */   lw        $t1, 0x150($s0)
/* 7CF28 8007C328 8E080180 */  lw         $t0, 0x180($s0)
/* 7CF2C 8007C32C 8E090178 */  lw         $t1, 0x178($s0)
/* 7CF30 8007C330 44809000 */  mtc1       $zero, $f18
/* 7CF34 8007C334 3C18800E */  lui        $t8, %hi(D_800D81B8)
/* 7CF38 8007C338 246D0001 */  addiu      $t5, $v1, 1
/* 7CF3C 8007C33C 271881B8 */  addiu      $t8, $t8, %lo(D_800D81B8)
/* 7CF40 8007C340 24190001 */  addiu      $t9, $zero, 1
/* 7CF44 8007C344 0109082A */  slt        $at, $t0, $t1
/* 7CF48 8007C348 A60D00D0 */  sh         $t5, 0xd0($s0)
/* 7CF4C 8007C34C A61900E6 */  sh         $t9, 0xe6($s0)
/* 7CF50 8007C350 AE1800E8 */  sw         $t8, 0xe8($s0)
/* 7CF54 8007C354 10200005 */  beqz       $at, .L8007C36C
/* 7CF58 8007C358 E6120114 */   swc1      $f18, 0x114($s0)
/* 7CF5C 8007C35C 8E0A0080 */  lw         $t2, 0x80($s0)
/* 7CF60 8007C360 00000000 */  nop
/* 7CF64 8007C364 354B0020 */  ori        $t3, $t2, 0x20
/* 7CF68 8007C368 AE0B0080 */  sw         $t3, 0x80($s0)
.L8007C36C:
/* 7CF6C 8007C36C 3C013F80 */  lui        $at, 0x3f80
/* 7CF70 8007C370 44813000 */  mtc1       $at, $f6
/* 7CF74 8007C374 C6100114 */  lwc1       $f16, 0x114($s0)
/* 7CF78 8007C378 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CF7C 8007C37C 46068100 */  add.s      $f4, $f16, $f6
/* 7CF80 8007C380 0C01E547 */  jal        func_8007951C
/* 7CF84 8007C384 E6040114 */   swc1      $f4, 0x114($s0)
/* 7CF88 8007C388 100001F7 */  b          .L8007CB68
/* 7CF8C 8007C38C 8E090150 */   lw        $t1, 0x150($s0)
/* 7CF90 8007C390 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CF94 8007C394 0C01E864 */  jal        func_8007A190
/* 7CF98 8007C398 00000000 */   nop
/* 7CF9C 8007C39C 14400006 */  bnez       $v0, .L8007C3B8
/* 7CFA0 8007C3A0 3C0E800E */   lui       $t6, 0x800e
/* 7CFA4 8007C3A4 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CFA8 8007C3A8 0C01E604 */  jal        func_80079810
/* 7CFAC 8007C3AC 00000000 */   nop
/* 7CFB0 8007C3B0 100001ED */  b          .L8007CB68
/* 7CFB4 8007C3B4 8E090150 */   lw        $t1, 0x150($s0)
.L8007C3B8:
/* 7CFB8 8007C3B8 960C00D0 */  lhu        $t4, 0xd0($s0)
/* 7CFBC 8007C3BC 25CE81D8 */  addiu      $t6, $t6, -0x7e28
/* 7CFC0 8007C3C0 240D0001 */  addiu      $t5, $zero, 1
/* 7CFC4 8007C3C4 258F0001 */  addiu      $t7, $t4, 1
/* 7CFC8 8007C3C8 A60F00D0 */  sh         $t7, 0xd0($s0)
/* 7CFCC 8007C3CC A60D00E6 */  sh         $t5, 0xe6($s0)
/* 7CFD0 8007C3D0 AE0E00E8 */  sw         $t6, 0xe8($s0)
/* 7CFD4 8007C3D4 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CFD8 8007C3D8 0C01E9AA */  jal        func_8007A6A8
/* 7CFDC 8007C3DC 00000000 */   nop
/* 7CFE0 8007C3E0 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CFE4 8007C3E4 0C01E92C */  jal        func_8007A4B0
/* 7CFE8 8007C3E8 00000000 */   nop
/* 7CFEC 8007C3EC 100001DE */  b          .L8007CB68
/* 7CFF0 8007C3F0 8E090150 */   lw        $t1, 0x150($s0)
/* 7CFF4 8007C3F4 97A40032 */  lhu        $a0, 0x32($sp)
/* 7CFF8 8007C3F8 0C01E9AA */  jal        func_8007A6A8
/* 7CFFC 8007C3FC 00000000 */   nop
/* 7D000 8007C400 861800E6 */  lh         $t8, 0xe6($s0)
/* 7D004 8007C404 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D008 8007C408 170001D6 */  bnez       $t8, .L8007CB64
/* 7D00C 8007C40C 00000000 */   nop
/* 7D010 8007C410 0C01E604 */  jal        func_80079810
/* 7D014 8007C414 00000000 */   nop
/* 7D018 8007C418 100001D3 */  b          .L8007CB68
/* 7D01C 8007C41C 8E090150 */   lw        $t1, 0x150($s0)
/* 7D020 8007C420 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D024 8007C424 0C01E864 */  jal        func_8007A190
/* 7D028 8007C428 00000000 */   nop
/* 7D02C 8007C42C 14400006 */  bnez       $v0, .L8007C448
/* 7D030 8007C430 3C09800E */   lui       $t1, 0x800e
/* 7D034 8007C434 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D038 8007C438 0C01E604 */  jal        func_80079810
/* 7D03C 8007C43C 00000000 */   nop
/* 7D040 8007C440 100001C9 */  b          .L8007CB68
/* 7D044 8007C444 8E090150 */   lw        $t1, 0x150($s0)
.L8007C448:
/* 7D048 8007C448 961900D0 */  lhu        $t9, 0xd0($s0)
/* 7D04C 8007C44C 252981D8 */  addiu      $t1, $t1, -0x7e28
/* 7D050 8007C450 240A0001 */  addiu      $t2, $zero, 1
/* 7D054 8007C454 27280001 */  addiu      $t0, $t9, 1
/* 7D058 8007C458 A60800D0 */  sh         $t0, 0xd0($s0)
/* 7D05C 8007C45C A60A00E6 */  sh         $t2, 0xe6($s0)
/* 7D060 8007C460 AE0900E8 */  sw         $t1, 0xe8($s0)
/* 7D064 8007C464 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D068 8007C468 0C01E547 */  jal        func_8007951C
/* 7D06C 8007C46C 00000000 */   nop
/* 7D070 8007C470 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D074 8007C474 0C01E92C */  jal        func_8007A4B0
/* 7D078 8007C478 00000000 */   nop
/* 7D07C 8007C47C 100001BA */  b          .L8007CB68
/* 7D080 8007C480 8E090150 */   lw        $t1, 0x150($s0)
/* 7D084 8007C484 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D088 8007C488 0C01E547 */  jal        func_8007951C
/* 7D08C 8007C48C 00000000 */   nop
/* 7D090 8007C490 860B00E6 */  lh         $t3, 0xe6($s0)
/* 7D094 8007C494 240C0024 */  addiu      $t4, $zero, 0x24
/* 7D098 8007C498 156001B2 */  bnez       $t3, .L8007CB64
/* 7D09C 8007C49C 00000000 */   nop
/* 7D0A0 8007C4A0 100001B0 */  b          .L8007CB64
/* 7D0A4 8007C4A4 A60C00D0 */   sh        $t4, 0xd0($s0)
.L8007C4A8:
/* 7D0A8 8007C4A8 3C0F0002 */  lui        $t7, 2
/* 7D0AC 8007C4AC 35EF1423 */  ori        $t7, $t7, 0x1423
/* 7D0B0 8007C4B0 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D0B4 8007C4B4 3C060002 */  lui        $a2, 2
/* 7D0B8 8007C4B8 34C614A3 */  ori        $a2, $a2, 0x14a3
/* 7D0BC 8007C4BC AFAF0010 */  sw         $t7, 0x10($sp)
/* 7D0C0 8007C4C0 0C00A46B */  jal        func_800291AC
/* 7D0C4 8007C4C4 24070010 */   addiu     $a3, $zero, 0x10
/* 7D0C8 8007C4C8 24010002 */  addiu      $at, $zero, 2
/* 7D0CC 8007C4CC 10410046 */  beq        $v0, $at, .L8007C5E8
/* 7D0D0 8007C4D0 3C19800E */   lui       $t9, 0x800e
/* 7D0D4 8007C4D4 24010003 */  addiu      $at, $zero, 3
/* 7D0D8 8007C4D8 1041003D */  beq        $v0, $at, .L8007C5D0
/* 7D0DC 8007C4DC 3C180001 */   lui       $t8, 1
/* 7D0E0 8007C4E0 8E0E0080 */  lw         $t6, 0x80($s0)
/* 7D0E4 8007C4E4 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D0E8 8007C4E8 31CD0020 */  andi       $t5, $t6, 0x20
/* 7D0EC 8007C4EC 11A00003 */  beqz       $t5, .L8007C4FC
/* 7D0F0 8007C4F0 3C0F0001 */   lui       $t7, 1
/* 7D0F4 8007C4F4 10000002 */  b          .L8007C500
/* 7D0F8 8007C4F8 2402FFFB */   addiu     $v0, $zero, -5
.L8007C4FC:
/* 7D0FC 8007C4FC 24020005 */  addiu      $v0, $zero, 5
.L8007C500:
/* 7D100 8007C500 86180088 */  lh         $t8, 0x88($s0)
/* 7D104 8007C504 8606008C */  lh         $a2, 0x8c($s0)
/* 7D108 8007C508 86070090 */  lh         $a3, 0x90($s0)
/* 7D10C 8007C50C 03022821 */  addu       $a1, $t8, $v0
/* 7D110 8007C510 24C60008 */  addiu      $a2, $a2, 8
/* 7D114 8007C514 24E7FFFF */  addiu      $a3, $a3, -1
/* 7D118 8007C518 00075C00 */  sll        $t3, $a3, 0x10
/* 7D11C 8007C51C 00064C00 */  sll        $t1, $a2, 0x10
/* 7D120 8007C520 0005CC00 */  sll        $t9, $a1, 0x10
/* 7D124 8007C524 3C0E0008 */  lui        $t6, 8
/* 7D128 8007C528 240D0003 */  addiu      $t5, $zero, 3
/* 7D12C 8007C52C AFAD0018 */  sw         $t5, 0x18($sp)
/* 7D130 8007C530 AFAE0014 */  sw         $t6, 0x14($sp)
/* 7D134 8007C534 00192C03 */  sra        $a1, $t9, 0x10
/* 7D138 8007C538 00093403 */  sra        $a2, $t1, 0x10
/* 7D13C 8007C53C 000B3C03 */  sra        $a3, $t3, 0x10
/* 7D140 8007C540 0C00CF9F */  jal        func_80033E7C
/* 7D144 8007C544 AFAF0010 */   sw        $t7, 0x10($sp)
/* 7D148 8007C548 8E020098 */  lw         $v0, 0x98($s0)
/* 7D14C 8007C54C 00000000 */  nop
/* 7D150 8007C550 30580002 */  andi       $t8, $v0, 2
/* 7D154 8007C554 13000009 */  beqz       $t8, .L8007C57C
/* 7D158 8007C558 00024B80 */   sll       $t1, $v0, 0xe
/* 7D15C 8007C55C 0C000CD3 */  jal        func_8000334C
/* 7D160 8007C560 2404009D */   addiu     $a0, $zero, 0x9d
/* 7D164 8007C564 3C19800E */  lui        $t9, %hi(D_800D821C)
/* 7D168 8007C568 2739821C */  addiu      $t9, $t9, %lo(D_800D821C)
/* 7D16C 8007C56C 24080001 */  addiu      $t0, $zero, 1
/* 7D170 8007C570 A60800E6 */  sh         $t0, 0xe6($s0)
/* 7D174 8007C574 1000017B */  b          .L8007CB64
/* 7D178 8007C578 AE1900E8 */   sw        $t9, 0xe8($s0)
.L8007C57C:
/* 7D17C 8007C57C 0521000C */  bgez       $t1, .L8007C5B0
/* 7D180 8007C580 3C0A800E */   lui       $t2, %hi(D_800D821C)
/* 7D184 8007C584 254A821C */  addiu      $t2, $t2, %lo(D_800D821C)
/* 7D188 8007C588 240B0001 */  addiu      $t3, $zero, 1
/* 7D18C 8007C58C 3C0C0001 */  lui        $t4, 1
/* 7D190 8007C590 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D194 8007C594 A60B00E6 */  sh         $t3, 0xe6($s0)
/* 7D198 8007C598 AE0A00E8 */  sw         $t2, 0xe8($s0)
/* 7D19C 8007C59C AE0C00F0 */  sw         $t4, 0xf0($s0)
/* 7D1A0 8007C5A0 0C01E332 */  jal        func_80078CC8
/* 7D1A4 8007C5A4 00002825 */   or        $a1, $zero, $zero
/* 7D1A8 8007C5A8 1000016E */  b          .L8007CB64
/* 7D1AC 8007C5AC AE0000F0 */   sw        $zero, 0xf0($s0)
.L8007C5B0:
/* 7D1B0 8007C5B0 860F00E6 */  lh         $t7, 0xe6($s0)
/* 7D1B4 8007C5B4 3C0E800E */  lui        $t6, %hi(D_800D8210)
/* 7D1B8 8007C5B8 15E0016A */  bnez       $t7, .L8007CB64
/* 7D1BC 8007C5BC 25CE8210 */   addiu     $t6, $t6, %lo(D_800D8210)
/* 7D1C0 8007C5C0 240D0001 */  addiu      $t5, $zero, 1
/* 7D1C4 8007C5C4 A60D00E6 */  sh         $t5, 0xe6($s0)
/* 7D1C8 8007C5C8 10000166 */  b          .L8007CB64
/* 7D1CC 8007C5CC AE0E00E8 */   sw        $t6, 0xe8($s0)
.L8007C5D0:
/* 7D1D0 8007C5D0 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D1D4 8007C5D4 AE0000EC */  sw         $zero, 0xec($s0)
/* 7D1D8 8007C5D8 0C01E604 */  jal        func_80079810
/* 7D1DC 8007C5DC AE1800F0 */   sw        $t8, 0xf0($s0)
/* 7D1E0 8007C5E0 10000161 */  b          .L8007CB68
/* 7D1E4 8007C5E4 8E090150 */   lw        $t1, 0x150($s0)
.L8007C5E8:
/* 7D1E8 8007C5E8 8E090080 */  lw         $t1, 0x80($s0)
/* 7D1EC 8007C5EC 2401FAFF */  addiu      $at, $zero, -0x501
/* 7D1F0 8007C5F0 01215024 */  and        $t2, $t1, $at
/* 7D1F4 8007C5F4 8E0D0150 */  lw         $t5, 0x150($s0)
/* 7D1F8 8007C5F8 3C01FFEF */  lui        $at, 0xffef
/* 7D1FC 8007C5FC 3421FFFF */  ori        $at, $at, 0xffff
/* 7D200 8007C600 01A1C024 */  and        $t8, $t5, $at
/* 7D204 8007C604 3C0140E0 */  lui        $at, 0x40e0
/* 7D208 8007C608 44814000 */  mtc1       $at, $f8
/* 7D20C 8007C60C C60000B4 */  lwc1       $f0, 0xb4($s0)
/* 7D210 8007C610 273981B8 */  addiu      $t9, $t9, -0x7e48
/* 7D214 8007C614 46080282 */  mul.s      $f10, $f0, $f8
/* 7D218 8007C618 AE1900E8 */  sw         $t9, 0xe8($s0)
/* 7D21C 8007C61C 24080001 */  addiu      $t0, $zero, 1
/* 7D220 8007C620 A60800E6 */  sh         $t0, 0xe6($s0)
/* 7D224 8007C624 4459F800 */  cfc1       $t9, $31
/* 7D228 8007C628 AE0A0080 */  sw         $t2, 0x80($s0)
/* 7D22C 8007C62C 37210003 */  ori        $at, $t9, 3
/* 7D230 8007C630 38210002 */  xori       $at, $at, 2
/* 7D234 8007C634 44C1F800 */  ctc1       $at, $31
/* 7D238 8007C638 3C01C0E0 */  lui        $at, 0xc0e0
/* 7D23C 8007C63C 460054A4 */  cvt.w.s    $f18, $f10
/* 7D240 8007C640 44818000 */  mtc1       $at, $f16
/* 7D244 8007C644 44D9F800 */  ctc1       $t9, $31
/* 7D248 8007C648 3C0C800E */  lui        $t4, %hi(D_800E3574)
/* 7D24C 8007C64C 46100182 */  mul.s      $f6, $f0, $f16
/* 7D250 8007C650 958C3574 */  lhu        $t4, %lo(D_800E3574)($t4)
/* 7D254 8007C654 44029000 */  mfc1       $v0, $f18
/* 7D258 8007C658 258F1000 */  addiu      $t7, $t4, 0x1000
/* 7D25C 8007C65C 4448F800 */  cfc1       $t0, $31
/* 7D260 8007C660 014F7025 */  or         $t6, $t2, $t7
/* 7D264 8007C664 35010003 */  ori        $at, $t0, 3
/* 7D268 8007C668 38210002 */  xori       $at, $at, 2
/* 7D26C 8007C66C 44C1F800 */  ctc1       $at, $31
/* 7D270 8007C670 3C0141F0 */  lui        $at, 0x41f0
/* 7D274 8007C674 46003124 */  cvt.w.s    $f4, $f6
/* 7D278 8007C678 44814000 */  mtc1       $at, $f8
/* 7D27C 8007C67C 44032000 */  mfc1       $v1, $f4
/* 7D280 8007C680 3C01BF80 */  lui        $at, 0xbf80
/* 7D284 8007C684 44815000 */  mtc1       $at, $f10
/* 7D288 8007C688 31CA0280 */  andi       $t2, $t6, 0x280
/* 7D28C 8007C68C 44C8F800 */  ctc1       $t0, $31
/* 7D290 8007C690 AE0E0080 */  sw         $t6, 0x80($s0)
/* 7D294 8007C694 AE180150 */  sw         $t8, 0x150($s0)
/* 7D298 8007C698 A20000DA */  sb         $zero, 0xda($s0)
/* 7D29C 8007C69C AE0A015C */  sw         $t2, 0x15c($s0)
/* 7D2A0 8007C6A0 24040045 */  addiu      $a0, $zero, 0x45
/* 7D2A4 8007C6A4 A60200A6 */  sh         $v0, 0xa6($s0)
/* 7D2A8 8007C6A8 A60200A4 */  sh         $v0, 0xa4($s0)
/* 7D2AC 8007C6AC E6080114 */  swc1       $f8, 0x114($s0)
/* 7D2B0 8007C6B0 A60300A8 */  sh         $v1, 0xa8($s0)
/* 7D2B4 8007C6B4 A60300A2 */  sh         $v1, 0xa2($s0)
/* 7D2B8 8007C6B8 0C000CD3 */  jal        func_8000334C
/* 7D2BC 8007C6BC E60A0118 */   swc1      $f10, 0x118($s0)
/* 7D2C0 8007C6C0 8E0400EC */  lw         $a0, 0xec($s0)
/* 7D2C4 8007C6C4 8E0500F0 */  lw         $a1, 0xf0($s0)
/* 7D2C8 8007C6C8 0C00A538 */  jal        func_800294E0
/* 7D2CC 8007C6CC 00000000 */   nop
/* 7D2D0 8007C6D0 00026400 */  sll        $t4, $v0, 0x10
/* 7D2D4 8007C6D4 10000123 */  b          .L8007CB64
/* 7D2D8 8007C6D8 AE0C0168 */   sw        $t4, 0x168($s0)
/* 7D2DC 8007C6DC 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D2E0 8007C6E0 0C01E3D5 */  jal        func_80078F54
/* 7D2E4 8007C6E4 00000000 */   nop
/* 7D2E8 8007C6E8 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D2EC 8007C6EC 0C01E3C5 */  jal        func_80078F14
/* 7D2F0 8007C6F0 00002825 */   or        $a1, $zero, $zero
/* 7D2F4 8007C6F4 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 7D2F8 8007C6F8 3C0FFFFD */  lui        $t7, 0xfffd
/* 7D2FC 8007C6FC 3C0E0005 */  lui        $t6, 5
/* 7D300 8007C700 240B000A */  addiu      $t3, $zero, 0xa
/* 7D304 8007C704 35EFE000 */  ori        $t7, $t7, 0xe000
/* 7D308 8007C708 35CE4000 */  ori        $t6, $t6, 0x4000
/* 7D30C 8007C70C 240D000A */  addiu      $t5, $zero, 0xa
/* 7D310 8007C710 A20B00DB */  sb         $t3, 0xdb($s0)
/* 7D314 8007C714 AE0F00F8 */  sw         $t7, 0xf8($s0)
/* 7D318 8007C718 AE0E00FC */  sw         $t6, 0xfc($s0)
/* 7D31C 8007C71C 04610006 */  bgez       $v1, .L8007C738
/* 7D320 8007C720 A60D00E4 */   sh        $t5, 0xe4($s0)
/* 7D324 8007C724 8E180098 */  lw         $t8, 0x98($s0)
/* 7D328 8007C728 00000000 */  nop
/* 7D32C 8007C72C 33190020 */  andi       $t9, $t8, 0x20
/* 7D330 8007C730 17200007 */  bnez       $t9, .L8007C750
/* 7D334 8007C734 97A40032 */   lhu       $a0, 0x32($sp)
.L8007C738:
/* 7D338 8007C738 8E020098 */  lw         $v0, 0x98($s0)
/* 7D33C 8007C73C 18600013 */  blez       $v1, .L8007C78C
/* 7D340 8007C740 30480010 */   andi      $t0, $v0, 0x10
/* 7D344 8007C744 11000012 */  beqz       $t0, .L8007C790
/* 7D348 8007C748 304C0001 */   andi      $t4, $v0, 1
/* 7D34C 8007C74C 97A40032 */  lhu        $a0, 0x32($sp)
.L8007C750:
/* 7D350 8007C750 0C00AE3C */  jal        func_8002B8F0
/* 7D354 8007C754 24050032 */   addiu     $a1, $zero, 0x32
/* 7D358 8007C758 0C000CD3 */  jal        func_8000334C
/* 7D35C 8007C75C 240400AC */   addiu     $a0, $zero, 0xac
/* 7D360 8007C760 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D364 8007C764 0C01E604 */  jal        func_80079810
/* 7D368 8007C768 00000000 */   nop
/* 7D36C 8007C76C 8E0900EC */  lw         $t1, 0xec($s0)
/* 7D370 8007C770 00000000 */  nop
/* 7D374 8007C774 05210003 */  bgez       $t1, .L8007C784
/* 7D378 8007C778 00095083 */   sra       $t2, $t1, 2
/* 7D37C 8007C77C 25210003 */  addiu      $at, $t1, 3
/* 7D380 8007C780 00015083 */  sra        $t2, $at, 2
.L8007C784:
/* 7D384 8007C784 100000F7 */  b          .L8007CB64
/* 7D388 8007C788 AE0A00EC */   sw        $t2, 0xec($s0)
.L8007C78C:
/* 7D38C 8007C78C 304C0001 */  andi       $t4, $v0, 1
.L8007C790:
/* 7D390 8007C790 1180000D */  beqz       $t4, .L8007C7C8
/* 7D394 8007C794 3C0B800E */   lui       $t3, %hi(D_800D8240)
/* 7D398 8007C798 256B8240 */  addiu      $t3, $t3, %lo(D_800D8240)
/* 7D39C 8007C79C 240F0001 */  addiu      $t7, $zero, 1
/* 7D3A0 8007C7A0 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D3A4 8007C7A4 A60F00E6 */  sh         $t7, 0xe6($s0)
/* 7D3A8 8007C7A8 AE0B00E8 */  sw         $t3, 0xe8($s0)
/* 7D3AC 8007C7AC 0C00AE3C */  jal        func_8002B8F0
/* 7D3B0 8007C7B0 24050002 */   addiu     $a1, $zero, 2
/* 7D3B4 8007C7B4 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D3B8 8007C7B8 0C01E77E */  jal        func_80079DF8
/* 7D3BC 8007C7BC 00000000 */   nop
/* 7D3C0 8007C7C0 10000005 */  b          .L8007C7D8
/* 7D3C4 8007C7C4 8E0300EC */   lw        $v1, 0xec($s0)
.L8007C7C8:
/* 7D3C8 8007C7C8 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D3CC 8007C7CC 0C01E7AE */  jal        func_80079EB8
/* 7D3D0 8007C7D0 00000000 */   nop
/* 7D3D4 8007C7D4 8E0300EC */  lw         $v1, 0xec($s0)
.L8007C7D8:
/* 7D3D8 8007C7D8 00000000 */  nop
/* 7D3DC 8007C7DC 1860000B */  blez       $v1, .L8007C80C
/* 7D3E0 8007C7E0 00000000 */   nop
/* 7D3E4 8007C7E4 8E0E0098 */  lw         $t6, 0x98($s0)
/* 7D3E8 8007C7E8 00000000 */  nop
/* 7D3EC 8007C7EC 31CD0008 */  andi       $t5, $t6, 8
/* 7D3F0 8007C7F0 15A00013 */  bnez       $t5, .L8007C840
/* 7D3F4 8007C7F4 97A40032 */   lhu       $a0, 0x32($sp)
/* 7D3F8 8007C7F8 8E180150 */  lw         $t8, 0x150($s0)
/* 7D3FC 8007C7FC 00000000 */  nop
/* 7D400 8007C800 33190008 */  andi       $t9, $t8, 8
/* 7D404 8007C804 1720000E */  bnez       $t9, .L8007C840
/* 7D408 8007C808 97A40032 */   lhu       $a0, 0x32($sp)
.L8007C80C:
/* 7D40C 8007C80C 0461001C */  bgez       $v1, .L8007C880
/* 7D410 8007C810 00000000 */   nop
/* 7D414 8007C814 8E080098 */  lw         $t0, 0x98($s0)
/* 7D418 8007C818 00000000 */  nop
/* 7D41C 8007C81C 31090004 */  andi       $t1, $t0, 4
/* 7D420 8007C820 15200007 */  bnez       $t1, .L8007C840
/* 7D424 8007C824 97A40032 */   lhu       $a0, 0x32($sp)
/* 7D428 8007C828 8E0A0150 */  lw         $t2, 0x150($s0)
/* 7D42C 8007C82C 00000000 */  nop
/* 7D430 8007C830 314C0004 */  andi       $t4, $t2, 4
/* 7D434 8007C834 11800012 */  beqz       $t4, .L8007C880
/* 7D438 8007C838 00000000 */   nop
/* 7D43C 8007C83C 97A40032 */  lhu        $a0, 0x32($sp)
.L8007C840:
/* 7D440 8007C840 0C00AE3C */  jal        func_8002B8F0
/* 7D444 8007C844 24050032 */   addiu     $a1, $zero, 0x32
/* 7D448 8007C848 0C000CD3 */  jal        func_8000334C
/* 7D44C 8007C84C 240400AC */   addiu     $a0, $zero, 0xac
/* 7D450 8007C850 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D454 8007C854 0C01E604 */  jal        func_80079810
/* 7D458 8007C858 00000000 */   nop
/* 7D45C 8007C85C 8E0B00EC */  lw         $t3, 0xec($s0)
/* 7D460 8007C860 00000000 */  nop
/* 7D464 8007C864 000B7823 */  negu       $t7, $t3
/* 7D468 8007C868 05E10003 */  bgez       $t7, .L8007C878
/* 7D46C 8007C86C 000F7043 */   sra       $t6, $t7, 1
/* 7D470 8007C870 25E10001 */  addiu      $at, $t7, 1
/* 7D474 8007C874 00017043 */  sra        $t6, $at, 1
.L8007C878:
/* 7D478 8007C878 100000BA */  b          .L8007CB64
/* 7D47C 8007C87C AE0E00EC */   sw        $t6, 0xec($s0)
.L8007C880:
/* 7D480 8007C880 C6000114 */  lwc1       $f0, 0x114($s0)
/* 7D484 8007C884 44809000 */  mtc1       $zero, $f18
/* 7D488 8007C888 3C013F80 */  lui        $at, 0x3f80
/* 7D48C 8007C88C 4600903C */  c.lt.s     $f18, $f0
/* 7D490 8007C890 00000000 */  nop
/* 7D494 8007C894 45000006 */  bc1f       .L8007C8B0
/* 7D498 8007C898 00000000 */   nop
/* 7D49C 8007C89C 44818000 */  mtc1       $at, $f16
/* 7D4A0 8007C8A0 00000000 */  nop
/* 7D4A4 8007C8A4 46100181 */  sub.s      $f6, $f0, $f16
/* 7D4A8 8007C8A8 100000AE */  b          .L8007CB64
/* 7D4AC 8007C8AC E6060114 */   swc1      $f6, 0x114($s0)
.L8007C8B0:
/* 7D4B0 8007C8B0 86020088 */  lh         $v0, 0x88($s0)
/* 7D4B4 8007C8B4 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D4B8 8007C8B8 28410101 */  slti       $at, $v0, 0x101
/* 7D4BC 8007C8BC 1020000A */  beqz       $at, .L8007C8E8
/* 7D4C0 8007C8C0 2841FF00 */   slti      $at, $v0, -0x100
/* 7D4C4 8007C8C4 14200008 */  bnez       $at, .L8007C8E8
/* 7D4C8 8007C8C8 00000000 */   nop
/* 7D4CC 8007C8CC 8602008C */  lh         $v0, 0x8c($s0)
/* 7D4D0 8007C8D0 00000000 */  nop
/* 7D4D4 8007C8D4 284100C1 */  slti       $at, $v0, 0xc1
/* 7D4D8 8007C8D8 10200003 */  beqz       $at, .L8007C8E8
/* 7D4DC 8007C8DC 2841FF40 */   slti      $at, $v0, -0xc0
/* 7D4E0 8007C8E0 102000A0 */  beqz       $at, .L8007CB64
/* 7D4E4 8007C8E4 00000000 */   nop
.L8007C8E8:
/* 7D4E8 8007C8E8 0C01E73A */  jal        func_80079CE8
/* 7D4EC 8007C8EC 00000000 */   nop
/* 7D4F0 8007C8F0 100000F3 */  b          .L8007CCC0
/* 7D4F4 8007C8F4 AE000080 */   sw        $zero, 0x80($s0)
.L8007C8F8:
/* 7D4F8 8007C8F8 8E0D0080 */  lw         $t5, 0x80($s0)
/* 7D4FC 8007C8FC 3C01FFFF */  lui        $at, 0xffff
/* 7D500 8007C900 961900D4 */  lhu        $t9, 0xd4($s0)
/* 7D504 8007C904 3421757F */  ori        $at, $at, 0x757f
/* 7D508 8007C908 01A1C024 */  and        $t8, $t5, $at
/* 7D50C 8007C90C 1F200095 */  bgtz       $t9, .L8007CB64
/* 7D510 8007C910 AE180080 */   sw        $t8, 0x80($s0)
/* 7D514 8007C914 8E0A0150 */  lw         $t2, 0x150($s0)
/* 7D518 8007C918 3C01FFDF */  lui        $at, 0xffdf
/* 7D51C 8007C91C 3421FFFF */  ori        $at, $at, 0xffff
/* 7D520 8007C920 01416024 */  and        $t4, $t2, $at
/* 7D524 8007C924 960800D0 */  lhu        $t0, 0xd0($s0)
/* 7D528 8007C928 3C0141A0 */  lui        $at, 0x41a0
/* 7D52C 8007C92C 44812000 */  mtc1       $at, $f4
/* 7D530 8007C930 8E0B00F8 */  lw         $t3, 0xf8($s0)
/* 7D534 8007C934 8E0F00FC */  lw         $t7, 0xfc($s0)
/* 7D538 8007C938 25090001 */  addiu      $t1, $t0, 1
/* 7D53C 8007C93C A60900D0 */  sh         $t1, 0xd0($s0)
/* 7D540 8007C940 AE0C0150 */  sw         $t4, 0x150($s0)
/* 7D544 8007C944 E6040114 */  swc1       $f4, 0x114($s0)
/* 7D548 8007C948 AE0B00EC */  sw         $t3, 0xec($s0)
/* 7D54C 8007C94C 10000085 */  b          .L8007CB64
/* 7D550 8007C950 AE0F00F0 */   sw        $t7, 0xf0($s0)
.L8007C954:
/* 7D554 8007C954 3C013F80 */  lui        $at, 0x3f80
/* 7D558 8007C958 44815000 */  mtc1       $at, $f10
/* 7D55C 8007C95C C6080114 */  lwc1       $f8, 0x114($s0)
/* 7D560 8007C960 3C014120 */  lui        $at, 0x4120
/* 7D564 8007C964 460A4481 */  sub.s      $f18, $f8, $f10
/* 7D568 8007C968 44813000 */  mtc1       $at, $f6
/* 7D56C 8007C96C E6120114 */  swc1       $f18, 0x114($s0)
/* 7D570 8007C970 C6100114 */  lwc1       $f16, 0x114($s0)
/* 7D574 8007C974 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D578 8007C978 4606803C */  c.lt.s     $f16, $f6
/* 7D57C 8007C97C 00000000 */  nop
/* 7D580 8007C980 45000009 */  bc1f       .L8007C9A8
/* 7D584 8007C984 00000000 */   nop
/* 7D588 8007C988 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D58C 8007C98C 0C00A901 */  jal        func_8002A404
/* 7D590 8007C990 24054000 */   addiu     $a1, $zero, 0x4000
/* 7D594 8007C994 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D598 8007C998 0C00A919 */  jal        func_8002A464
/* 7D59C 8007C99C 24054000 */   addiu     $a1, $zero, 0x4000
/* 7D5A0 8007C9A0 10000009 */  b          .L8007C9C8
/* 7D5A4 8007C9A4 C6040114 */   lwc1      $f4, 0x114($s0)
.L8007C9A8:
/* 7D5A8 8007C9A8 0C00A901 */  jal        func_8002A404
/* 7D5AC 8007C9AC 24050800 */   addiu     $a1, $zero, 0x800
/* 7D5B0 8007C9B0 8E0300F0 */  lw         $v1, 0xf0($s0)
/* 7D5B4 8007C9B4 00000000 */  nop
/* 7D5B8 8007C9B8 18600002 */  blez       $v1, .L8007C9C4
/* 7D5BC 8007C9BC 246EC800 */   addiu     $t6, $v1, -0x3800
/* 7D5C0 8007C9C0 AE0E00F0 */  sw         $t6, 0xf0($s0)
.L8007C9C4:
/* 7D5C4 8007C9C4 C6040114 */  lwc1       $f4, 0x114($s0)
.L8007C9C8:
/* 7D5C8 8007C9C8 44804000 */  mtc1       $zero, $f8
/* 7D5CC 8007C9CC 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D5D0 8007C9D0 4608203C */  c.lt.s     $f4, $f8
/* 7D5D4 8007C9D4 00000000 */  nop
/* 7D5D8 8007C9D8 45000003 */  bc1f       .L8007C9E8
/* 7D5DC 8007C9DC 00000000 */   nop
/* 7D5E0 8007C9E0 0C01E604 */  jal        func_80079810
/* 7D5E4 8007C9E4 00000000 */   nop
.L8007C9E8:
/* 7D5E8 8007C9E8 8E0D00F0 */  lw         $t5, 0xf0($s0)
/* 7D5EC 8007C9EC 00000000 */  nop
/* 7D5F0 8007C9F0 05A10010 */  bgez       $t5, .L8007CA34
/* 7D5F4 8007C9F4 00000000 */   nop
/* 7D5F8 8007C9F8 8E180098 */  lw         $t8, 0x98($s0)
/* 7D5FC 8007C9FC 00000000 */  nop
/* 7D600 8007CA00 33190020 */  andi       $t9, $t8, 0x20
/* 7D604 8007CA04 1320000B */  beqz       $t9, .L8007CA34
/* 7D608 8007CA08 00000000 */   nop
/* 7D60C 8007CA0C 0C000CD3 */  jal        func_8000334C
/* 7D610 8007CA10 24040036 */   addiu     $a0, $zero, 0x36
/* 7D614 8007CA14 8E0A00F0 */  lw         $t2, 0xf0($s0)
/* 7D618 8007CA18 3C08800E */  lui        $t0, %hi(D_800D81F8)
/* 7D61C 8007CA1C 250881F8 */  addiu      $t0, $t0, %lo(D_800D81F8)
/* 7D620 8007CA20 24090001 */  addiu      $t1, $zero, 1
/* 7D624 8007CA24 000A6023 */  negu       $t4, $t2
/* 7D628 8007CA28 A60900E6 */  sh         $t1, 0xe6($s0)
/* 7D62C 8007CA2C AE0800E8 */  sw         $t0, 0xe8($s0)
/* 7D630 8007CA30 AE0C00F0 */  sw         $t4, 0xf0($s0)
.L8007CA34:
/* 7D634 8007CA34 8E0300EC */  lw         $v1, 0xec($s0)
/* 7D638 8007CA38 00000000 */  nop
/* 7D63C 8007CA3C 04610006 */  bgez       $v1, .L8007CA58
/* 7D640 8007CA40 00000000 */   nop
/* 7D644 8007CA44 8E0B0098 */  lw         $t3, 0x98($s0)
/* 7D648 8007CA48 00000000 */  nop
/* 7D64C 8007CA4C 316F0004 */  andi       $t7, $t3, 4
/* 7D650 8007CA50 15E00008 */  bnez       $t7, .L8007CA74
/* 7D654 8007CA54 00000000 */   nop
.L8007CA58:
/* 7D658 8007CA58 18600042 */  blez       $v1, .L8007CB64
/* 7D65C 8007CA5C 00000000 */   nop
/* 7D660 8007CA60 8E0E0098 */  lw         $t6, 0x98($s0)
/* 7D664 8007CA64 00000000 */  nop
/* 7D668 8007CA68 31CD0008 */  andi       $t5, $t6, 8
/* 7D66C 8007CA6C 11A0003D */  beqz       $t5, .L8007CB64
/* 7D670 8007CA70 00000000 */   nop
.L8007CA74:
/* 7D674 8007CA74 0C000CD3 */  jal        func_8000334C
/* 7D678 8007CA78 24040036 */   addiu     $a0, $zero, 0x36
/* 7D67C 8007CA7C 8E0800EC */  lw         $t0, 0xec($s0)
/* 7D680 8007CA80 3C18800E */  lui        $t8, %hi(D_800D81F8)
/* 7D684 8007CA84 271881F8 */  addiu      $t8, $t8, %lo(D_800D81F8)
/* 7D688 8007CA88 24190001 */  addiu      $t9, $zero, 1
/* 7D68C 8007CA8C 00084823 */  negu       $t1, $t0
/* 7D690 8007CA90 A61900E6 */  sh         $t9, 0xe6($s0)
/* 7D694 8007CA94 AE1800E8 */  sw         $t8, 0xe8($s0)
/* 7D698 8007CA98 10000032 */  b          .L8007CB64
/* 7D69C 8007CA9C AE0900EC */   sw        $t1, 0xec($s0)
.L8007CAA0:
/* 7D6A0 8007CAA0 44805000 */  mtc1       $zero, $f10
/* 7D6A4 8007CAA4 240C0003 */  addiu      $t4, $zero, 3
/* 7D6A8 8007CAA8 240B3044 */  addiu      $t3, $zero, 0x3044
/* 7D6AC 8007CAAC A60A00D0 */  sh         $t2, 0xd0($s0)
/* 7D6B0 8007CAB0 AE0C0080 */  sw         $t4, 0x80($s0)
/* 7D6B4 8007CAB4 A60B0084 */  sh         $t3, 0x84($s0)
/* 7D6B8 8007CAB8 A60000E6 */  sh         $zero, 0xe6($s0)
/* 7D6BC 8007CABC E60A00C4 */  swc1       $f10, 0xc4($s0)
.L8007CAC0:
/* 7D6C0 8007CAC0 960F0094 */  lhu        $t7, 0x94($s0)
/* 7D6C4 8007CAC4 8E0D0154 */  lw         $t5, 0x154($s0)
/* 7D6C8 8007CAC8 8E180158 */  lw         $t8, 0x158($s0)
/* 7D6CC 8007CACC 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D6D0 8007CAD0 35EE0008 */  ori        $t6, $t7, 8
/* 7D6D4 8007CAD4 01B8C821 */  addu       $t9, $t5, $t8
/* 7D6D8 8007CAD8 A60E0094 */  sh         $t6, 0x94($s0)
/* 7D6DC 8007CADC AE190154 */  sw         $t9, 0x154($s0)
/* 7D6E0 8007CAE0 0C01E3C5 */  jal        func_80078F14
/* 7D6E4 8007CAE4 AE190090 */   sw        $t9, 0x90($s0)
/* 7D6E8 8007CAE8 86020090 */  lh         $v0, 0x90($s0)
/* 7D6EC 8007CAEC 3C0E800E */  lui        $t6, 0x800e
/* 7D6F0 8007CAF0 28410020 */  slti       $at, $v0, 0x20
/* 7D6F4 8007CAF4 1020000A */  beqz       $at, .L8007CB20
/* 7D6F8 8007CAF8 240DEFFF */   addiu     $t5, $zero, -0x1001
/* 7D6FC 8007CAFC 2841FFE1 */  slti       $at, $v0, -0x1f
/* 7D700 8007CB00 14200007 */  bnez       $at, .L8007CB20
/* 7D704 8007CB04 3C0A800E */   lui       $t2, %hi(D_800E3574)
/* 7D708 8007CB08 954A3574 */  lhu        $t2, %lo(D_800E3574)($t2)
/* 7D70C 8007CB0C 8E090080 */  lw         $t1, 0x80($s0)
/* 7D710 8007CB10 254C1000 */  addiu      $t4, $t2, 0x1000
/* 7D714 8007CB14 012C5825 */  or         $t3, $t1, $t4
/* 7D718 8007CB18 10000012 */  b          .L8007CB64
/* 7D71C 8007CB1C AE0B0080 */   sw        $t3, 0x80($s0)
.L8007CB20:
/* 7D720 8007CB20 95CE3574 */  lhu        $t6, 0x3574($t6)
/* 7D724 8007CB24 8E0F0080 */  lw         $t7, 0x80($s0)
/* 7D728 8007CB28 01AEC023 */  subu       $t8, $t5, $t6
/* 7D72C 8007CB2C 01F8C824 */  and        $t9, $t7, $t8
/* 7D730 8007CB30 1000000C */  b          .L8007CB64
/* 7D734 8007CB34 AE190080 */   sw        $t9, 0x80($s0)
.L8007CB38:
/* 7D738 8007CB38 97A40032 */  lhu        $a0, 0x32($sp)
/* 7D73C 8007CB3C 0C01E604 */  jal        func_80079810
/* 7D740 8007CB40 AE080080 */   sw        $t0, 0x80($s0)
/* 7D744 8007CB44 10000008 */  b          .L8007CB68
/* 7D748 8007CB48 8E090150 */   lw        $t1, 0x150($s0)
.L8007CB4C:
/* 7D74C 8007CB4C 860A0088 */  lh         $t2, 0x88($s0)
/* 7D750 8007CB50 00000000 */  nop
/* 7D754 8007CB54 294100C1 */  slti       $at, $t2, 0xc1
/* 7D758 8007CB58 14200002 */  bnez       $at, .L8007CB64
/* 7D75C 8007CB5C 00000000 */   nop
/* 7D760 8007CB60 AE000080 */  sw         $zero, 0x80($s0)
.L8007CB64:
/* 7D764 8007CB64 8E090150 */  lw         $t1, 0x150($s0)
.L8007CB68:
/* 7D768 8007CB68 24012000 */  addiu      $at, $zero, 0x2000
/* 7D76C 8007CB6C 312C3000 */  andi       $t4, $t1, 0x3000
/* 7D770 8007CB70 15810005 */  bne        $t4, $at, .L8007CB88
/* 7D774 8007CB74 00000000 */   nop
/* 7D778 8007CB78 8E0B0080 */  lw         $t3, 0x80($s0)
/* 7D77C 8007CB7C 00000000 */  nop
/* 7D780 8007CB80 356D8000 */  ori        $t5, $t3, 0x8000
/* 7D784 8007CB84 AE0D0080 */  sw         $t5, 0x80($s0)
.L8007CB88:
/* 7D788 8007CB88 960200D0 */  lhu        $v0, 0xd0($s0)
/* 7D78C 8007CB8C 00000000 */  nop
/* 7D790 8007CB90 28410003 */  slti       $at, $v0, 3
/* 7D794 8007CB94 1420004B */  bnez       $at, .L8007CCC4
/* 7D798 8007CB98 8FBF002C */   lw        $ra, 0x2c($sp)
/* 7D79C 8007CB9C C60000B4 */  lwc1       $f0, 0xb4($s0)
/* 7D7A0 8007CBA0 24010200 */  addiu      $at, $zero, 0x200
/* 7D7A4 8007CBA4 10410036 */  beq        $v0, $at, .L8007CC80
/* 7D7A8 8007CBA8 E60000B8 */   swc1      $f0, 0xb8($s0)
/* 7D7AC 8007CBAC 24010061 */  addiu      $at, $zero, 0x61
/* 7D7B0 8007CBB0 10410033 */  beq        $v0, $at, .L8007CC80
/* 7D7B4 8007CBB4 3C014140 */   lui       $at, 0x4140
/* 7D7B8 8007CBB8 44819000 */  mtc1       $at, $f18
/* 7D7BC 8007CBBC 00000000 */  nop
/* 7D7C0 8007CBC0 46120402 */  mul.s      $f16, $f0, $f18
/* 7D7C4 8007CBC4 444EF800 */  cfc1       $t6, $31
/* 7D7C8 8007CBC8 00000000 */  nop
/* 7D7CC 8007CBCC 35C10003 */  ori        $at, $t6, 3
/* 7D7D0 8007CBD0 38210002 */  xori       $at, $at, 2
/* 7D7D4 8007CBD4 44C1F800 */  ctc1       $at, $31
/* 7D7D8 8007CBD8 3C01C188 */  lui        $at, 0xc188
/* 7D7DC 8007CBDC 460081A4 */  cvt.w.s    $f6, $f16
/* 7D7E0 8007CBE0 44812000 */  mtc1       $at, $f4
/* 7D7E4 8007CBE4 44CEF800 */  ctc1       $t6, $31
/* 7D7E8 8007CBE8 440F3000 */  mfc1       $t7, $f6
/* 7D7EC 8007CBEC 46040202 */  mul.s      $f8, $f0, $f4
/* 7D7F0 8007CBF0 A60F00AE */  sh         $t7, 0xae($s0)
/* 7D7F4 8007CBF4 4458F800 */  cfc1       $t8, $31
/* 7D7F8 8007CBF8 00000000 */  nop
/* 7D7FC 8007CBFC 37010003 */  ori        $at, $t8, 3
/* 7D800 8007CC00 38210002 */  xori       $at, $at, 2
/* 7D804 8007CC04 44C1F800 */  ctc1       $at, $31
/* 7D808 8007CC08 3C01C120 */  lui        $at, 0xc120
/* 7D80C 8007CC0C 460042A4 */  cvt.w.s    $f10, $f8
/* 7D810 8007CC10 44819000 */  mtc1       $at, $f18
/* 7D814 8007CC14 44D8F800 */  ctc1       $t8, $31
/* 7D818 8007CC18 44195000 */  mfc1       $t9, $f10
/* 7D81C 8007CC1C 46120402 */  mul.s      $f16, $f0, $f18
/* 7D820 8007CC20 A61900B0 */  sh         $t9, 0xb0($s0)
/* 7D824 8007CC24 4448F800 */  cfc1       $t0, $31
/* 7D828 8007CC28 00000000 */  nop
/* 7D82C 8007CC2C 35010003 */  ori        $at, $t0, 3
/* 7D830 8007CC30 38210002 */  xori       $at, $at, 2
/* 7D834 8007CC34 44C1F800 */  ctc1       $at, $31
/* 7D838 8007CC38 3C014120 */  lui        $at, 0x4120
/* 7D83C 8007CC3C 460081A4 */  cvt.w.s    $f6, $f16
/* 7D840 8007CC40 44812000 */  mtc1       $at, $f4
/* 7D844 8007CC44 44C8F800 */  ctc1       $t0, $31
/* 7D848 8007CC48 440A3000 */  mfc1       $t2, $f6
/* 7D84C 8007CC4C 46040202 */  mul.s      $f8, $f0, $f4
/* 7D850 8007CC50 A60A00AA */  sh         $t2, 0xaa($s0)
/* 7D854 8007CC54 4449F800 */  cfc1       $t1, $31
/* 7D858 8007CC58 00000000 */  nop
/* 7D85C 8007CC5C 35210003 */  ori        $at, $t1, 3
/* 7D860 8007CC60 38210002 */  xori       $at, $at, 2
/* 7D864 8007CC64 44C1F800 */  ctc1       $at, $31
/* 7D868 8007CC68 00000000 */  nop
/* 7D86C 8007CC6C 460042A4 */  cvt.w.s    $f10, $f8
/* 7D870 8007CC70 440C5000 */  mfc1       $t4, $f10
/* 7D874 8007CC74 44C9F800 */  ctc1       $t1, $31
/* 7D878 8007CC78 A60C00AC */  sh         $t4, 0xac($s0)
/* 7D87C 8007CC7C 00000000 */  nop
.L8007CC80:
/* 7D880 8007CC80 960B0094 */  lhu        $t3, 0x94($s0)
/* 7D884 8007CC84 00000000 */  nop
/* 7D888 8007CC88 316D0008 */  andi       $t5, $t3, 8
/* 7D88C 8007CC8C 15A00005 */  bnez       $t5, .L8007CCA4
/* 7D890 8007CC90 97A40032 */   lhu       $a0, 0x32($sp)
/* 7D894 8007CC94 44809000 */  mtc1       $zero, $f18
/* 7D898 8007CC98 00000000 */  nop
/* 7D89C 8007CC9C E61200C4 */  swc1       $f18, 0xc4($s0)
/* 7D8A0 8007CCA0 97A40032 */  lhu        $a0, 0x32($sp)
.L8007CCA4:
/* 7D8A4 8007CCA4 0C01E271 */  jal        func_800789C4
/* 7D8A8 8007CCA8 00000000 */   nop
/* 7D8AC 8007CCAC 960200D4 */  lhu        $v0, 0xd4($s0)
/* 7D8B0 8007CCB0 00000000 */  nop
/* 7D8B4 8007CCB4 10400002 */  beqz       $v0, .L8007CCC0
/* 7D8B8 8007CCB8 244EFFFF */   addiu     $t6, $v0, -1
/* 7D8BC 8007CCBC A60E00D4 */  sh         $t6, 0xd4($s0)
.L8007CCC0:
/* 7D8C0 8007CCC0 8FBF002C */  lw         $ra, 0x2c($sp)
.L8007CCC4:
/* 7D8C4 8007CCC4 8FB00028 */  lw         $s0, 0x28($sp)
/* 7D8C8 8007CCC8 03E00008 */  jr         $ra
/* 7D8CC 8007CCCC 27BD0030 */   addiu     $sp, $sp, 0x30
