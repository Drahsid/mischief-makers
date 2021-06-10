glabel func_8002E89C
/* 2F49C 8002E89C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2F4A0 8002E8A0 000E7880 */  sll        $t7, $t6, 2
/* 2F4A4 8002E8A4 01EE7823 */  subu       $t7, $t7, $t6
/* 2F4A8 8002E8A8 000F7880 */  sll        $t7, $t7, 2
/* 2F4AC 8002E8AC 01EE7821 */  addu       $t7, $t7, $t6
/* 2F4B0 8002E8B0 000F7880 */  sll        $t7, $t7, 2
/* 2F4B4 8002E8B4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2F4B8 8002E8B8 01EE7823 */  subu       $t7, $t7, $t6
/* 2F4BC 8002E8BC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 2F4C0 8002E8C0 AFB00018 */  sw         $s0, 0x18($sp)
/* 2F4C4 8002E8C4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 2F4C8 8002E8C8 000F78C0 */  sll        $t7, $t7, 3
/* 2F4CC 8002E8CC 01F88021 */  addu       $s0, $t7, $t8
/* 2F4D0 8002E8D0 8E020098 */  lw         $v0, 0x98($s0)
/* 2F4D4 8002E8D4 AFA40030 */  sw         $a0, 0x30($sp)
/* 2F4D8 8002E8D8 30590002 */  andi       $t9, $v0, 2
/* 2F4DC 8002E8DC 01C02025 */  or         $a0, $t6, $zero
/* 2F4E0 8002E8E0 17200008 */  bnez       $t9, .L8002E904
/* 2F4E4 8002E8E4 AFBF001C */   sw        $ra, 0x1c($sp)
/* 2F4E8 8002E8E8 30480001 */  andi       $t0, $v0, 1
/* 2F4EC 8002E8EC 15000006 */  bnez       $t0, .L8002E908
/* 2F4F0 8002E8F0 3C013F00 */   lui       $at, 0x3f00
/* 2F4F4 8002E8F4 0C00AF04 */  jal        func_8002BC10
/* 2F4F8 8002E8F8 00000000 */   nop
/* 2F4FC 8002E8FC 1040000A */  beqz       $v0, .L8002E928
/* 2F500 8002E900 3C063D23 */   lui       $a2, 0x3d23
.L8002E904:
/* 2F504 8002E904 3C013F00 */  lui        $at, 0x3f00
.L8002E908:
/* 2F508 8002E908 44816000 */  mtc1       $at, $f12
/* 2F50C 8002E90C 86050088 */  lh         $a1, 0x88($s0)
/* 2F510 8002E910 8606008C */  lh         $a2, 0x8c($s0)
/* 2F514 8002E914 86070090 */  lh         $a3, 0x90($s0)
/* 2F518 8002E918 0C00FE78 */  jal        func_8003F9E0
/* 2F51C 8002E91C AE000080 */   sw        $zero, 0x80($s0)
/* 2F520 8002E920 100000A2 */  b          .L8002EBAC
/* 2F524 8002E924 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002E928:
/* 2F528 8002E928 44801000 */  mtc1       $zero, $f2
/* 2F52C 8002E92C C6000118 */  lwc1       $f0, 0x118($s0)
/* 2F530 8002E930 8E090080 */  lw         $t1, 0x80($s0)
/* 2F534 8002E934 46001032 */  c.eq.s     $f2, $f0
/* 2F538 8002E938 352A0001 */  ori        $t2, $t1, 1
/* 2F53C 8002E93C 45010010 */  bc1t       .L8002E980
/* 2F540 8002E940 AE0A0080 */   sw        $t2, 0x80($s0)
/* 2F544 8002E944 3C013F80 */  lui        $at, 0x3f80
/* 2F548 8002E948 44812000 */  mtc1       $at, $f4
/* 2F54C 8002E94C 00000000 */  nop
/* 2F550 8002E950 46040181 */  sub.s      $f6, $f0, $f4
/* 2F554 8002E954 E6060118 */  swc1       $f6, 0x118($s0)
/* 2F558 8002E958 C6080118 */  lwc1       $f8, 0x118($s0)
/* 2F55C 8002E95C 00000000 */  nop
/* 2F560 8002E960 46081032 */  c.eq.s     $f2, $f8
/* 2F564 8002E964 00000000 */  nop
/* 2F568 8002E968 45000006 */  bc1f       .L8002E984
/* 2F56C 8002E96C 3C013F80 */   lui       $at, 0x3f80
/* 2F570 8002E970 8E0C015C */  lw         $t4, 0x15c($s0)
/* 2F574 8002E974 00000000 */  nop
/* 2F578 8002E978 014C6825 */  or         $t5, $t2, $t4
/* 2F57C 8002E97C AE0D0080 */  sw         $t5, 0x80($s0)
.L8002E980:
/* 2F580 8002E980 3C013F80 */  lui        $at, 0x3f80
.L8002E984:
/* 2F584 8002E984 44817000 */  mtc1       $at, $f14
/* 2F588 8002E988 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 2F58C 8002E98C 0C00A618 */  jal        func_80029860
/* 2F590 8002E990 34C6D70A */   ori       $a2, $a2, 0xd70a
/* 2F594 8002E994 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 2F598 8002E998 3C01800F */  lui        $at, %hi(D_800EB8F0)
/* 2F59C 8002E99C C42EB8F0 */  lwc1       $f14, %lo(D_800EB8F0)($at)
/* 2F5A0 8002E9A0 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 2F5A4 8002E9A4 3C063E19 */  lui        $a2, 0x3e19
/* 2F5A8 8002E9A8 0C00A618 */  jal        func_80029860
/* 2F5AC 8002E9AC 34C6999A */   ori       $a2, $a2, 0x999a
/* 2F5B0 8002E9B0 8E0400EC */  lw         $a0, 0xec($s0)
/* 2F5B4 8002E9B4 8E050150 */  lw         $a1, 0x150($s0)
/* 2F5B8 8002E9B8 8E060164 */  lw         $a2, 0x164($s0)
/* 2F5BC 8002E9BC 0C00A607 */  jal        func_8002981C
/* 2F5C0 8002E9C0 E60000B8 */   swc1      $f0, 0xb8($s0)
/* 2F5C4 8002E9C4 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 2F5C8 8002E9C8 8E050154 */  lw         $a1, 0x154($s0)
/* 2F5CC 8002E9CC 8E060168 */  lw         $a2, 0x168($s0)
/* 2F5D0 8002E9D0 0C00A607 */  jal        func_8002981C
/* 2F5D4 8002E9D4 AE0200EC */   sw        $v0, 0xec($s0)
/* 2F5D8 8002E9D8 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 2F5DC 8002E9DC 3C0E800C */  lui        $t6, %hi(D_800BE4E0)
/* 2F5E0 8002E9E0 95CEE4E0 */  lhu        $t6, %lo(D_800BE4E0)($t6)
/* 2F5E4 8002E9E4 3C04800D */  lui        $a0, %hi(D_800D2284)
/* 2F5E8 8002E9E8 31CF0003 */  andi       $t7, $t6, 3
/* 2F5EC 8002E9EC 15E0006E */  bnez       $t7, .L8002EBA8
/* 2F5F0 8002E9F0 24842284 */   addiu     $a0, $a0, %lo(D_800D2284)
/* 2F5F4 8002E9F4 86070090 */  lh         $a3, 0x90($s0)
/* 2F5F8 8002E9F8 86050088 */  lh         $a1, 0x88($s0)
/* 2F5FC 8002E9FC 8606008C */  lh         $a2, 0x8c($s0)
/* 2F600 8002EA00 0C00C48F */  jal        func_8003123C
/* 2F604 8002EA04 24E7FFFF */   addiu     $a3, $a3, -1
/* 2F608 8002EA08 10400067 */  beqz       $v0, .L8002EBA8
/* 2F60C 8002EA0C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 2F610 8002EA10 0004C080 */  sll        $t8, $a0, 2
/* 2F614 8002EA14 0304C023 */  subu       $t8, $t8, $a0
/* 2F618 8002EA18 0018C080 */  sll        $t8, $t8, 2
/* 2F61C 8002EA1C 0304C021 */  addu       $t8, $t8, $a0
/* 2F620 8002EA20 0018C080 */  sll        $t8, $t8, 2
/* 2F624 8002EA24 3C01800F */  lui        $at, %hi(D_800EB8F8)
/* 2F628 8002EA28 0304C023 */  subu       $t8, $t8, $a0
/* 2F62C 8002EA2C 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 2F630 8002EA30 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 2F634 8002EA34 0018C0C0 */  sll        $t8, $t8, 3
/* 2F638 8002EA38 C421B8F8 */  lwc1       $f1, %lo(D_800EB8F8)($at)
/* 2F63C 8002EA3C C420B8FC */  lwc1       $f0, -0x4704($at)
/* 2F640 8002EA40 03191821 */  addu       $v1, $t8, $t9
/* 2F644 8002EA44 24080009 */  addiu      $t0, $zero, 9
/* 2F648 8002EA48 A4680094 */  sh         $t0, 0x94($v1)
/* 2F64C 8002EA4C 9209009C */  lbu        $t1, 0x9c($s0)
/* 2F650 8002EA50 AFA30024 */  sw         $v1, 0x24($sp)
/* 2F654 8002EA54 A069009C */  sb         $t1, 0x9c($v1)
/* 2F658 8002EA58 920A009D */  lbu        $t2, 0x9d($s0)
/* 2F65C 8002EA5C 00000000 */  nop
/* 2F660 8002EA60 A06A009D */  sb         $t2, 0x9d($v1)
/* 2F664 8002EA64 920B009E */  lbu        $t3, 0x9e($s0)
/* 2F668 8002EA68 00000000 */  nop
/* 2F66C 8002EA6C A06B009E */  sb         $t3, 0x9e($v1)
/* 2F670 8002EA70 8E0C0158 */  lw         $t4, 0x158($s0)
/* 2F674 8002EA74 00000000 */  nop
/* 2F678 8002EA78 AC6C0160 */  sw         $t4, 0x160($v1)
/* 2F67C 8002EA7C C60A00B4 */  lwc1       $f10, 0xb4($s0)
/* 2F680 8002EA80 00000000 */  nop
/* 2F684 8002EA84 46005421 */  cvt.d.s    $f16, $f10
/* 2F688 8002EA88 46208482 */  mul.d      $f18, $f16, $f0
/* 2F68C 8002EA8C 46209120 */  cvt.s.d    $f4, $f18
/* 2F690 8002EA90 E46400B4 */  swc1       $f4, 0xb4($v1)
/* 2F694 8002EA94 C60600B8 */  lwc1       $f6, 0xb8($s0)
/* 2F698 8002EA98 00000000 */  nop
/* 2F69C 8002EA9C 46003221 */  cvt.d.s    $f8, $f6
/* 2F6A0 8002EAA0 46204282 */  mul.d      $f10, $f8, $f0
/* 2F6A4 8002EAA4 46205420 */  cvt.s.d    $f16, $f10
/* 2F6A8 8002EAA8 0C0005E3 */  jal        func_8000178C
/* 2F6AC 8002EAAC E47000B8 */   swc1      $f16, 0xb8($v1)
/* 2F6B0 8002EAB0 304D000F */  andi       $t5, $v0, 0xf
/* 2F6B4 8002EAB4 448D9000 */  mtc1       $t5, $f18
/* 2F6B8 8002EAB8 3C014334 */  lui        $at, 0x4334
/* 2F6BC 8002EABC 46809120 */  cvt.s.w    $f4, $f18
/* 2F6C0 8002EAC0 44813000 */  mtc1       $at, $f6
/* 2F6C4 8002EAC4 8E0E00EC */  lw         $t6, 0xec($s0)
/* 2F6C8 8002EAC8 46062203 */  div.s      $f8, $f4, $f6
/* 2F6CC 8002EACC 000E7823 */  negu       $t7, $t6
/* 2F6D0 8002EAD0 448F2000 */  mtc1       $t7, $f4
/* 2F6D4 8002EAD4 C60A00B8 */  lwc1       $f10, 0xb8($s0)
/* 2F6D8 8002EAD8 468021A0 */  cvt.s.w    $f6, $f4
/* 2F6DC 8002EADC C61200B4 */  lwc1       $f18, 0xb4($s0)
/* 2F6E0 8002EAE0 8FA30024 */  lw         $v1, 0x24($sp)
/* 2F6E4 8002EAE4 46085400 */  add.s      $f16, $f10, $f8
/* 2F6E8 8002EAE8 46069282 */  mul.s      $f10, $f18, $f6
/* 2F6EC 8002EAEC E61000B8 */  swc1       $f16, 0xb8($s0)
/* 2F6F0 8002EAF0 4458F800 */  cfc1       $t8, $31
/* 2F6F4 8002EAF4 00000000 */  nop
/* 2F6F8 8002EAF8 37010003 */  ori        $at, $t8, 3
/* 2F6FC 8002EAFC 38210002 */  xori       $at, $at, 2
/* 2F700 8002EB00 44C1F800 */  ctc1       $at, $31
/* 2F704 8002EB04 00000000 */  nop
/* 2F708 8002EB08 46005224 */  cvt.w.s    $f8, $f10
/* 2F70C 8002EB0C 44194000 */  mfc1       $t9, $f8
/* 2F710 8002EB10 44D8F800 */  ctc1       $t8, $31
/* 2F714 8002EB14 AC7900EC */  sw         $t9, 0xec($v1)
/* 2F718 8002EB18 8E0800F0 */  lw         $t0, 0xf0($s0)
/* 2F71C 8002EB1C C61000B4 */  lwc1       $f16, 0xb4($s0)
/* 2F720 8002EB20 00084823 */  negu       $t1, $t0
/* 2F724 8002EB24 44892000 */  mtc1       $t1, $f4
/* 2F728 8002EB28 03206025 */  or         $t4, $t9, $zero
/* 2F72C 8002EB2C 468024A0 */  cvt.s.w    $f18, $f4
/* 2F730 8002EB30 2418FFFF */  addiu      $t8, $zero, -1
/* 2F734 8002EB34 2419FFE0 */  addiu      $t9, $zero, -0x20
/* 2F738 8002EB38 46128182 */  mul.s      $f6, $f16, $f18
/* 2F73C 8002EB3C AC7800F4 */  sw         $t8, 0xf4($v1)
/* 2F740 8002EB40 AC790154 */  sw         $t9, 0x154($v1)
/* 2F744 8002EB44 444AF800 */  cfc1       $t2, $31
/* 2F748 8002EB48 00000000 */  nop
/* 2F74C 8002EB4C 35410003 */  ori        $at, $t2, 3
/* 2F750 8002EB50 38210002 */  xori       $at, $at, 2
/* 2F754 8002EB54 44C1F800 */  ctc1       $at, $31
/* 2F758 8002EB58 00000000 */  nop
/* 2F75C 8002EB5C 460032A4 */  cvt.w.s    $f10, $f6
/* 2F760 8002EB60 440B5000 */  mfc1       $t3, $f10
/* 2F764 8002EB64 44CAF800 */  ctc1       $t2, $31
/* 2F768 8002EB68 AC6B00F0 */  sw         $t3, 0xf0($v1)
/* 2F76C 8002EB6C 05810003 */  bgez       $t4, .L8002EB7C
/* 2F770 8002EB70 000C6903 */   sra       $t5, $t4, 4
/* 2F774 8002EB74 2581000F */  addiu      $at, $t4, 0xf
/* 2F778 8002EB78 00016903 */  sra        $t5, $at, 4
.L8002EB7C:
/* 2F77C 8002EB7C 8C6E00F0 */  lw         $t6, 0xf0($v1)
/* 2F780 8002EB80 AC6D0158 */  sw         $t5, 0x158($v1)
/* 2F784 8002EB84 05C10003 */  bgez       $t6, .L8002EB94
/* 2F788 8002EB88 000E7903 */   sra       $t7, $t6, 4
/* 2F78C 8002EB8C 25C1000F */  addiu      $at, $t6, 0xf
/* 2F790 8002EB90 00017903 */  sra        $t7, $at, 4
.L8002EB94:
/* 2F794 8002EB94 3C01800F */  lui        $at, %hi(D_800EB900)
/* 2F798 8002EB98 AC6F015C */  sw         $t7, 0x15c($v1)
/* 2F79C 8002EB9C C428B900 */  lwc1       $f8, %lo(D_800EB900)($at)
/* 2F7A0 8002EBA0 00000000 */  nop
/* 2F7A4 8002EBA4 E4680114 */  swc1       $f8, 0x114($v1)
.L8002EBA8:
/* 2F7A8 8002EBA8 8FBF001C */  lw         $ra, 0x1c($sp)
.L8002EBAC:
/* 2F7AC 8002EBAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 2F7B0 8002EBB0 03E00008 */  jr         $ra
/* 2F7B4 8002EBB4 27BD0030 */   addiu     $sp, $sp, 0x30
