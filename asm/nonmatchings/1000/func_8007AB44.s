glabel func_8007AB44
/* 7B744 8007AB44 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7B748 8007AB48 AFA40040 */  sw         $a0, 0x40($sp)
/* 7B74C 8007AB4C 97AE0042 */  lhu        $t6, 0x42($sp)
/* 7B750 8007AB50 3C18800F */  lui        $t8, 0x800f
/* 7B754 8007AB54 000E7880 */  sll        $t7, $t6, 2
/* 7B758 8007AB58 01EE7823 */  subu       $t7, $t7, $t6
/* 7B75C 8007AB5C 000F7880 */  sll        $t7, $t7, 2
/* 7B760 8007AB60 01EE7821 */  addu       $t7, $t7, $t6
/* 7B764 8007AB64 000F7880 */  sll        $t7, $t7, 2
/* 7B768 8007AB68 01EE7823 */  subu       $t7, $t7, $t6
/* 7B76C 8007AB6C AFB00018 */  sw         $s0, 0x18($sp)
/* 7B770 8007AB70 000F78C0 */  sll        $t7, $t7, 3
/* 7B774 8007AB74 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 7B778 8007AB78 01F88021 */  addu       $s0, $t7, $t8
/* 7B77C 8007AB7C 8E190098 */  lw         $t9, 0x98($s0)
/* 7B780 8007AB80 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7B784 8007AB84 332C0200 */  andi       $t4, $t9, 0x200
/* 7B788 8007AB88 1180001D */  beqz       $t4, .L8007AC00
/* 7B78C 8007AB8C 00000000 */   nop
/* 7B790 8007AB90 0C00A411 */  jal        func_80029044
/* 7B794 8007AB94 01C02025 */   or        $a0, $t6, $zero
/* 7B798 8007AB98 14400019 */  bnez       $v0, .L8007AC00
/* 7B79C 8007AB9C 00000000 */   nop
/* 7B7A0 8007ABA0 8E0400EC */  lw         $a0, 0xec($s0)
/* 7B7A4 8007ABA4 00000000 */  nop
/* 7B7A8 8007ABA8 00046840 */  sll        $t5, $a0, 1
/* 7B7AC 8007ABAC 0C00A273 */  jal        func_800289CC
/* 7B7B0 8007ABB0 01A02025 */   or        $a0, $t5, $zero
/* 7B7B4 8007ABB4 3C0F0010 */  lui        $t7, 0x10
/* 7B7B8 8007ABB8 01E21823 */  subu       $v1, $t7, $v0
/* 7B7BC 8007ABBC 04610004 */  bgez       $v1, .L8007ABD0
/* 7B7C0 8007ABC0 0003C403 */   sra       $t8, $v1, 0x10
/* 7B7C4 8007ABC4 3401FFFF */  ori        $at, $zero, 0xffff
/* 7B7C8 8007ABC8 00230821 */  addu       $at, $at, $v1
/* 7B7CC 8007ABCC 0001C403 */  sra        $t8, $at, 0x10
.L8007ABD0:
/* 7B7D0 8007ABD0 2B010002 */  slti       $at, $t8, 2
/* 7B7D4 8007ABD4 10200002 */  beqz       $at, .L8007ABE0
/* 7B7D8 8007ABD8 03003825 */   or        $a3, $t8, $zero
/* 7B7DC 8007ABDC 24070002 */  addiu      $a3, $zero, 2
.L8007ABE0:
/* 7B7E0 8007ABE0 3C04800C */  lui        $a0, %hi(D_800BE704)
/* 7B7E4 8007ABE4 9484E704 */  lhu        $a0, %lo(D_800BE704)($a0)
/* 7B7E8 8007ABE8 00E02825 */  or         $a1, $a3, $zero
/* 7B7EC 8007ABEC 0C00A607 */  jal        func_8002981C
/* 7B7F0 8007ABF0 24060001 */   addiu     $a2, $zero, 1
/* 7B7F4 8007ABF4 3C01800C */  lui        $at, %hi(D_800BE704)
/* 7B7F8 8007ABF8 1000001B */  b          .L8007AC68
/* 7B7FC 8007ABFC A422E704 */   sh        $v0, %lo(D_800BE704)($at)
.L8007AC00:
/* 7B800 8007AC00 8E190080 */  lw         $t9, 0x80($s0)
/* 7B804 8007AC04 97B80042 */  lhu        $t8, 0x42($sp)
/* 7B808 8007AC08 372C1000 */  ori        $t4, $t9, 0x1000
/* 7B80C 8007AC0C 8E0E0150 */  lw         $t6, 0x150($s0)
/* 7B810 8007AC10 3C01FFCF */  lui        $at, 0xffcf
/* 7B814 8007AC14 0018C880 */  sll        $t9, $t8, 2
/* 7B818 8007AC18 3421FFFF */  ori        $at, $at, 0xffff
/* 7B81C 8007AC1C 0338C823 */  subu       $t9, $t9, $t8
/* 7B820 8007AC20 0019C880 */  sll        $t9, $t9, 2
/* 7B824 8007AC24 01C16824 */  and        $t5, $t6, $at
/* 7B828 8007AC28 24030010 */  addiu      $v1, $zero, 0x10
/* 7B82C 8007AC2C 0338C821 */  addu       $t9, $t9, $t8
/* 7B830 8007AC30 A60300D0 */  sh         $v1, 0xd0($s0)
/* 7B834 8007AC34 AE0C0080 */  sw         $t4, 0x80($s0)
/* 7B838 8007AC38 AE0D0150 */  sw         $t5, 0x150($s0)
/* 7B83C 8007AC3C 3C01800C */  lui        $at, %hi(D_800BE704)
/* 7B840 8007AC40 0019C880 */  sll        $t9, $t9, 2
/* 7B844 8007AC44 A423E704 */  sh         $v1, %lo(D_800BE704)($at)
/* 7B848 8007AC48 0338C823 */  subu       $t9, $t9, $t8
/* 7B84C 8007AC4C 0019C8C0 */  sll        $t9, $t9, 3
/* 7B850 8007AC50 3C01800F */  lui        $at, %hi(D_800EF728)
/* 7B854 8007AC54 00390821 */  addu       $at, $at, $t9
/* 7B858 8007AC58 240F0002 */  addiu      $t7, $zero, 2
/* 7B85C 8007AC5C AC2FF728 */  sw         $t7, %lo(D_800EF728)($at)
/* 7B860 8007AC60 10000266 */  b          .L8007B5FC
/* 7B864 8007AC64 24020001 */   addiu     $v0, $zero, 1
.L8007AC68:
/* 7B868 8007AC68 3C01C100 */  lui        $at, 0xc100
/* 7B86C 8007AC6C 44813000 */  mtc1       $at, $f6
/* 7B870 8007AC70 C60400B4 */  lwc1       $f4, 0xb4($s0)
/* 7B874 8007AC74 8E0700EC */  lw         $a3, 0xec($s0)
/* 7B878 8007AC78 46062202 */  mul.s      $f8, $f4, $f6
/* 7B87C 8007AC7C A60000E6 */  sh         $zero, 0xe6($s0)
/* 7B880 8007AC80 444CF800 */  cfc1       $t4, $31
/* 7B884 8007AC84 00000000 */  nop
/* 7B888 8007AC88 35810003 */  ori        $at, $t4, 3
/* 7B88C 8007AC8C 38210002 */  xori       $at, $at, 2
/* 7B890 8007AC90 44C1F800 */  ctc1       $at, $31
/* 7B894 8007AC94 3C010006 */  lui        $at, 6
/* 7B898 8007AC98 460042A4 */  cvt.w.s    $f10, $f8
/* 7B89C 8007AC9C 34210001 */  ori        $at, $at, 1
/* 7B8A0 8007ACA0 440E5000 */  mfc1       $t6, $f10
/* 7B8A4 8007ACA4 44CCF800 */  ctc1       $t4, $31
/* 7B8A8 8007ACA8 04E10002 */  bgez       $a3, .L8007ACB4
/* 7B8AC 8007ACAC A60E00B0 */   sh        $t6, 0xb0($s0)
/* 7B8B0 8007ACB0 00073823 */  negu       $a3, $a3
.L8007ACB4:
/* 7B8B4 8007ACB4 00E1082A */  slt        $at, $a3, $at
/* 7B8B8 8007ACB8 14200004 */  bnez       $at, .L8007ACCC
/* 7B8BC 8007ACBC 240D3036 */   addiu     $t5, $zero, 0x3036
/* 7B8C0 8007ACC0 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7B8C4 8007ACC4 1000004E */  b          .L8007AE00
/* 7B8C8 8007ACC8 A60D0084 */   sh        $t5, 0x84($s0)
.L8007ACCC:
/* 7B8CC 8007ACCC 3C020003 */  lui        $v0, 3
/* 7B8D0 8007ACD0 34420001 */  ori        $v0, $v0, 1
/* 7B8D4 8007ACD4 00E2082A */  slt        $at, $a3, $v0
/* 7B8D8 8007ACD8 10200007 */  beqz       $at, .L8007ACF8
/* 7B8DC 8007ACDC 240F3034 */   addiu     $t7, $zero, 0x3034
/* 7B8E0 8007ACE0 8E1800F0 */  lw         $t8, 0xf0($s0)
/* 7B8E4 8007ACE4 3C01FFFF */  lui        $at, 0xffff
/* 7B8E8 8007ACE8 34214000 */  ori        $at, $at, 0x4000
/* 7B8EC 8007ACEC 0301082A */  slt        $at, $t8, $at
/* 7B8F0 8007ACF0 10200003 */  beqz       $at, .L8007AD00
/* 7B8F4 8007ACF4 24193032 */   addiu     $t9, $zero, 0x3032
.L8007ACF8:
/* 7B8F8 8007ACF8 10000002 */  b          .L8007AD04
/* 7B8FC 8007ACFC A60F0084 */   sh        $t7, 0x84($s0)
.L8007AD00:
/* 7B900 8007AD00 A6190084 */  sh         $t9, 0x84($s0)
.L8007AD04:
/* 7B904 8007AD04 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7B908 8007AD08 240E0001 */  addiu      $t6, $zero, 1
/* 7B90C 8007AD0C 0082082A */  slt        $at, $a0, $v0
/* 7B910 8007AD10 10200004 */  beqz       $at, .L8007AD24
/* 7B914 8007AD14 3C01FFFD */   lui       $at, 0xfffd
/* 7B918 8007AD18 0081082A */  slt        $at, $a0, $at
/* 7B91C 8007AD1C 1020002C */  beqz       $at, .L8007ADD0
/* 7B920 8007AD20 3C18800C */   lui       $t8, 0x800c
.L8007AD24:
/* 7B924 8007AD24 444CF800 */  cfc1       $t4, $31
/* 7B928 8007AD28 44CEF800 */  ctc1       $t6, $31
/* 7B92C 8007AD2C C6100134 */  lwc1       $f16, 0x134($s0)
/* 7B930 8007AD30 3C014F00 */  lui        $at, 0x4f00
/* 7B934 8007AD34 460084A4 */  cvt.w.s    $f18, $f16
/* 7B938 8007AD38 444EF800 */  cfc1       $t6, $31
/* 7B93C 8007AD3C 00000000 */  nop
/* 7B940 8007AD40 31CE0078 */  andi       $t6, $t6, 0x78
/* 7B944 8007AD44 11C00012 */  beqz       $t6, .L8007AD90
/* 7B948 8007AD48 00000000 */   nop
/* 7B94C 8007AD4C 44819000 */  mtc1       $at, $f18
/* 7B950 8007AD50 240E0001 */  addiu      $t6, $zero, 1
/* 7B954 8007AD54 46128481 */  sub.s      $f18, $f16, $f18
/* 7B958 8007AD58 3C018000 */  lui        $at, 0x8000
/* 7B95C 8007AD5C 44CEF800 */  ctc1       $t6, $31
/* 7B960 8007AD60 00000000 */  nop
/* 7B964 8007AD64 460094A4 */  cvt.w.s    $f18, $f18
/* 7B968 8007AD68 444EF800 */  cfc1       $t6, $31
/* 7B96C 8007AD6C 00000000 */  nop
/* 7B970 8007AD70 31CE0078 */  andi       $t6, $t6, 0x78
/* 7B974 8007AD74 15C00004 */  bnez       $t6, .L8007AD88
/* 7B978 8007AD78 00000000 */   nop
/* 7B97C 8007AD7C 440E9000 */  mfc1       $t6, $f18
/* 7B980 8007AD80 10000007 */  b          .L8007ADA0
/* 7B984 8007AD84 01C17025 */   or        $t6, $t6, $at
.L8007AD88:
/* 7B988 8007AD88 10000005 */  b          .L8007ADA0
/* 7B98C 8007AD8C 240EFFFF */   addiu     $t6, $zero, -1
.L8007AD90:
/* 7B990 8007AD90 440E9000 */  mfc1       $t6, $f18
/* 7B994 8007AD94 00000000 */  nop
/* 7B998 8007AD98 05C0FFFB */  bltz       $t6, .L8007AD88
/* 7B99C 8007AD9C 00000000 */   nop
.L8007ADA0:
/* 7B9A0 8007ADA0 44CCF800 */  ctc1       $t4, $31
/* 7B9A4 8007ADA4 31CDFFFF */  andi       $t5, $t6, 0xffff
/* 7B9A8 8007ADA8 11A00015 */  beqz       $t5, .L8007AE00
/* 7B9AC 8007ADAC 00000000 */   nop
/* 7B9B0 8007ADB0 44802000 */  mtc1       $zero, $f4
/* 7B9B4 8007ADB4 97A50042 */  lhu        $a1, 0x42($sp)
/* 7B9B8 8007ADB8 240400FD */  addiu      $a0, $zero, 0xfd
/* 7B9BC 8007ADBC 0C000DDE */  jal        func_80003778
/* 7B9C0 8007ADC0 E6040134 */   swc1      $f4, 0x134($s0)
/* 7B9C4 8007ADC4 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7B9C8 8007ADC8 1000000E */  b          .L8007AE04
/* 7B9CC 8007ADCC 96190094 */   lhu       $t9, 0x94($s0)
.L8007ADD0:
/* 7B9D0 8007ADD0 9718E4E0 */  lhu        $t8, -0x1b20($t8)
/* 7B9D4 8007ADD4 3C0142BA */  lui        $at, 0x42ba
/* 7B9D8 8007ADD8 330F000F */  andi       $t7, $t8, 0xf
/* 7B9DC 8007ADDC 15E00008 */  bnez       $t7, .L8007AE00
/* 7B9E0 8007ADE0 00000000 */   nop
/* 7B9E4 8007ADE4 44813000 */  mtc1       $at, $f6
/* 7B9E8 8007ADE8 97A50042 */  lhu        $a1, 0x42($sp)
/* 7B9EC 8007ADEC 240400FD */  addiu      $a0, $zero, 0xfd
/* 7B9F0 8007ADF0 0C000DDE */  jal        func_80003778
/* 7B9F4 8007ADF4 E6060134 */   swc1      $f6, 0x134($s0)
/* 7B9F8 8007ADF8 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7B9FC 8007ADFC 00000000 */  nop
.L8007AE00:
/* 7BA00 8007AE00 96190094 */  lhu        $t9, 0x94($s0)
.L8007AE04:
/* 7BA04 8007AE04 8E020080 */  lw         $v0, 0x80($s0)
/* 7BA08 8007AE08 372C0008 */  ori        $t4, $t9, 8
/* 7BA0C 8007AE0C 304D0020 */  andi       $t5, $v0, 0x20
/* 7BA10 8007AE10 A60C0094 */  sh         $t4, 0x94($s0)
/* 7BA14 8007AE14 04810003 */  bgez       $a0, .L8007AE24
/* 7BA18 8007AE18 00047343 */   sra       $t6, $a0, 0xd
/* 7BA1C 8007AE1C 24811FFF */  addiu      $at, $a0, 0x1fff
/* 7BA20 8007AE20 00017343 */  sra        $t6, $at, 0xd
.L8007AE24:
/* 7BA24 8007AE24 448E4000 */  mtc1       $t6, $f8
/* 7BA28 8007AE28 01A01025 */  or         $v0, $t5, $zero
/* 7BA2C 8007AE2C 11A00002 */  beqz       $t5, .L8007AE38
/* 7BA30 8007AE30 46804020 */   cvt.s.w   $f0, $f8
/* 7BA34 8007AE34 46000007 */  neg.s      $f0, $f0
.L8007AE38:
/* 7BA38 8007AE38 10400014 */  beqz       $v0, .L8007AE8C
/* 7BA3C 8007AE3C E60000C4 */   swc1      $f0, 0xc4($s0)
/* 7BA40 8007AE40 3C01800F */  lui        $at, %hi(D_800ECD90)
/* 7BA44 8007AE44 C431CD90 */  lwc1       $f17, %lo(D_800ECD90)($at)
/* 7BA48 8007AE48 C430CD94 */  lwc1       $f16, -0x326c($at)
/* 7BA4C 8007AE4C 460002A1 */  cvt.d.s    $f10, $f0
/* 7BA50 8007AE50 00000000 */  nop
/* 7BA54 8007AE54 46305483 */  div.d      $f18, $f10, $f16
/* 7BA58 8007AE58 4458F800 */  cfc1       $t8, $31
/* 7BA5C 8007AE5C 00000000 */  nop
/* 7BA60 8007AE60 37010003 */  ori        $at, $t8, 3
/* 7BA64 8007AE64 38210002 */  xori       $at, $at, 2
/* 7BA68 8007AE68 44C1F800 */  ctc1       $at, $31
/* 7BA6C 8007AE6C 00000000 */  nop
/* 7BA70 8007AE70 46209124 */  cvt.w.d    $f4, $f18
/* 7BA74 8007AE74 44022000 */  mfc1       $v0, $f4
/* 7BA78 8007AE78 44D8F800 */  ctc1       $t8, $31
/* 7BA7C 8007AE7C 244200D0 */  addiu      $v0, $v0, 0xd0
/* 7BA80 8007AE80 304FFFFF */  andi       $t7, $v0, 0xffff
/* 7BA84 8007AE84 10000013 */  b          .L8007AED4
/* 7BA88 8007AE88 01E01025 */   or        $v0, $t7, $zero
.L8007AE8C:
/* 7BA8C 8007AE8C 3C01800F */  lui        $at, %hi(D_800ECD98)
/* 7BA90 8007AE90 C429CD98 */  lwc1       $f9, %lo(D_800ECD98)($at)
/* 7BA94 8007AE94 C428CD9C */  lwc1       $f8, -0x3264($at)
/* 7BA98 8007AE98 460001A1 */  cvt.d.s    $f6, $f0
/* 7BA9C 8007AE9C 00000000 */  nop
/* 7BAA0 8007AEA0 46283283 */  div.d      $f10, $f6, $f8
/* 7BAA4 8007AEA4 4459F800 */  cfc1       $t9, $31
/* 7BAA8 8007AEA8 00000000 */  nop
/* 7BAAC 8007AEAC 37210003 */  ori        $at, $t9, 3
/* 7BAB0 8007AEB0 38210002 */  xori       $at, $at, 2
/* 7BAB4 8007AEB4 44C1F800 */  ctc1       $at, $31
/* 7BAB8 8007AEB8 00000000 */  nop
/* 7BABC 8007AEBC 46205424 */  cvt.w.d    $f16, $f10
/* 7BAC0 8007AEC0 44028000 */  mfc1       $v0, $f16
/* 7BAC4 8007AEC4 44D9F800 */  ctc1       $t9, $31
/* 7BAC8 8007AEC8 24420130 */  addiu      $v0, $v0, 0x130
/* 7BACC 8007AECC 304CFFFF */  andi       $t4, $v0, 0xffff
/* 7BAD0 8007AED0 01801025 */  or         $v0, $t4, $zero
.L8007AED4:
/* 7BAD4 8007AED4 8E050160 */  lw         $a1, 0x160($s0)
/* 7BAD8 8007AED8 00022400 */  sll        $a0, $v0, 0x10
/* 7BADC 8007AEDC 0C00A634 */  jal        func_800298D0
/* 7BAE0 8007AEE0 3C060008 */   lui       $a2, 8
/* 7BAE4 8007AEE4 3C014200 */  lui        $at, 0x4200
/* 7BAE8 8007AEE8 44811000 */  mtc1       $at, $f2
/* 7BAEC 8007AEEC 3C014780 */  lui        $at, 0x4780
/* 7BAF0 8007AEF0 44816000 */  mtc1       $at, $f12
/* 7BAF4 8007AEF4 3C09800C */  lui        $t1, %hi(D_800BCCD0)
/* 7BAF8 8007AEF8 2529CCD0 */  addiu      $t1, $t1, %lo(D_800BCCD0)
/* 7BAFC 8007AEFC 8E190088 */  lw         $t9, 0x88($s0)
/* 7BB00 8007AF00 3C0B800F */  lui        $t3, %hi(gActors)
/* 7BB04 8007AF04 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 7BB08 8007AF08 AE020160 */  sw         $v0, 0x160($s0)
/* 7BB0C 8007AF0C 3C0A800C */  lui        $t2, %hi(D_800BE55C)
/* 7BB10 8007AF10 254AE55C */  addiu      $t2, $t2, %lo(D_800BE55C)
/* 7BB14 8007AF14 04410004 */  bgez       $v0, .L8007AF28
/* 7BB18 8007AF18 00021C03 */   sra       $v1, $v0, 0x10
/* 7BB1C 8007AF1C 3401FFFF */  ori        $at, $zero, 0xffff
/* 7BB20 8007AF20 00220821 */  addu       $at, $at, $v0
/* 7BB24 8007AF24 00011C03 */  sra        $v1, $at, 0x10
.L8007AF28:
/* 7BB28 8007AF28 00607025 */  or         $t6, $v1, $zero
/* 7BB2C 8007AF2C 31CD03FF */  andi       $t5, $t6, 0x3ff
/* 7BB30 8007AF30 000DC080 */  sll        $t8, $t5, 2
/* 7BB34 8007AF34 01387821 */  addu       $t7, $t1, $t8
/* 7BB38 8007AF38 C5F20000 */  lwc1       $f18, ($t7)
/* 7BB3C 8007AF3C 01C01825 */  or         $v1, $t6, $zero
/* 7BB40 8007AF40 46029102 */  mul.s      $f4, $f18, $f2
/* 7BB44 8007AF44 2478FF00 */  addiu      $t8, $v1, -0x100
/* 7BB48 8007AF48 330F03FF */  andi       $t7, $t8, 0x3ff
/* 7BB4C 8007AF4C 3C08800D */  lui        $t0, 0x800d
/* 7BB50 8007AF50 460C2002 */  mul.s      $f0, $f4, $f12
/* 7BB54 8007AF54 3C02800D */  lui        $v0, 0x800d
/* 7BB58 8007AF58 444CF800 */  cfc1       $t4, $31
/* 7BB5C 8007AF5C 00000000 */  nop
/* 7BB60 8007AF60 35810003 */  ori        $at, $t4, 3
/* 7BB64 8007AF64 38210002 */  xori       $at, $at, 2
/* 7BB68 8007AF68 44C1F800 */  ctc1       $at, $31
/* 7BB6C 8007AF6C 00000000 */  nop
/* 7BB70 8007AF70 460001A4 */  cvt.w.s    $f6, $f0
/* 7BB74 8007AF74 440E3000 */  mfc1       $t6, $f6
/* 7BB78 8007AF78 44CCF800 */  ctc1       $t4, $31
/* 7BB7C 8007AF7C 000F6080 */  sll        $t4, $t7, 2
/* 7BB80 8007AF80 032E6821 */  addu       $t5, $t9, $t6
/* 7BB84 8007AF84 012CC821 */  addu       $t9, $t1, $t4
/* 7BB88 8007AF88 C7280000 */  lwc1       $f8, ($t9)
/* 7BB8C 8007AF8C AD6D0088 */  sw         $t5, 0x88($t3)
/* 7BB90 8007AF90 46024282 */  mul.s      $f10, $f8, $f2
/* 7BB94 8007AF94 8E0E008C */  lw         $t6, 0x8c($s0)
/* 7BB98 8007AF98 3C19800C */  lui        $t9, 0x800c
/* 7BB9C 8007AF9C 8D6C0088 */  lw         $t4, 0x88($t3)
/* 7BBA0 8007AFA0 460C5002 */  mul.s      $f0, $f10, $f12
/* 7BBA4 8007AFA4 444DF800 */  cfc1       $t5, $31
/* 7BBA8 8007AFA8 00000000 */  nop
/* 7BBAC 8007AFAC 35A10003 */  ori        $at, $t5, 3
/* 7BBB0 8007AFB0 38210002 */  xori       $at, $at, 2
/* 7BBB4 8007AFB4 44C1F800 */  ctc1       $at, $31
/* 7BBB8 8007AFB8 3C01800C */  lui        $at, 0x800c
/* 7BBBC 8007AFBC 46000424 */  cvt.w.s    $f16, $f0
/* 7BBC0 8007AFC0 44188000 */  mfc1       $t8, $f16
/* 7BBC4 8007AFC4 44CDF800 */  ctc1       $t5, $31
/* 7BBC8 8007AFC8 01D87821 */  addu       $t7, $t6, $t8
/* 7BBCC 8007AFCC AD6F008C */  sw         $t7, 0x8c($t3)
/* 7BBD0 8007AFD0 8F39E558 */  lw         $t9, -0x1aa8($t9)
/* 7BBD4 8007AFD4 00000000 */  nop
/* 7BBD8 8007AFD8 01996821 */  addu       $t5, $t4, $t9
/* 7BBDC 8007AFDC AC2DE5D8 */  sw         $t5, -0x1a28($at)
/* 7BBE0 8007AFE0 8D580000 */  lw         $t8, ($t2)
/* 7BBE4 8007AFE4 8D6E008C */  lw         $t6, 0x8c($t3)
/* 7BBE8 8007AFE8 3C01800C */  lui        $at, %hi(D_800BE5DC)
/* 7BBEC 8007AFEC 01D87821 */  addu       $t7, $t6, $t8
/* 7BBF0 8007AFF0 AC2FE5DC */  sw         $t7, %lo(D_800BE5DC)($at)
/* 7BBF4 8007AFF4 8E0C0090 */  lw         $t4, 0x90($s0)
/* 7BBF8 8007AFF8 85460000 */  lh         $a2, ($t2)
/* 7BBFC 8007AFFC 2599F000 */  addiu      $t9, $t4, -0x1000
/* 7BC00 8007B000 AD790090 */  sw         $t9, 0x90($t3)
/* 7BC04 8007B004 8604008C */  lh         $a0, 0x8c($s0)
/* 7BC08 8007B008 85082918 */  lh         $t0, 0x2918($t0)
/* 7BC0C 8007B00C 00862821 */  addu       $a1, $a0, $a2
/* 7BC10 8007B010 24A70010 */  addiu      $a3, $a1, 0x10
/* 7BC14 8007B014 0107082A */  slt        $at, $t0, $a3
/* 7BC18 8007B018 10200006 */  beqz       $at, .L8007B034
/* 7BC1C 8007B01C 00886821 */   addu      $t5, $a0, $t0
/* 7BC20 8007B020 01A77023 */  subu       $t6, $t5, $a3
/* 7BC24 8007B024 A60E008C */  sh         $t6, 0x8c($s0)
/* 7BC28 8007B028 8604008C */  lh         $a0, 0x8c($s0)
/* 7BC2C 8007B02C 00000000 */  nop
/* 7BC30 8007B030 00862821 */  addu       $a1, $a0, $a2
.L8007B034:
/* 7BC34 8007B034 8442291C */  lh         $v0, 0x291c($v0)
/* 7BC38 8007B038 00000000 */  nop
/* 7BC3C 8007B03C 00A2082A */  slt        $at, $a1, $v0
/* 7BC40 8007B040 10200003 */  beqz       $at, .L8007B050
/* 7BC44 8007B044 0082C021 */   addu      $t8, $a0, $v0
/* 7BC48 8007B048 03057823 */  subu       $t7, $t8, $a1
/* 7BC4C 8007B04C A60F008C */  sh         $t7, 0x8c($s0)
.L8007B050:
/* 7BC50 8007B050 8E05015C */  lw         $a1, 0x15c($s0)
/* 7BC54 8007B054 00000000 */  nop
/* 7BC58 8007B058 00A03825 */  or         $a3, $a1, $zero
/* 7BC5C 8007B05C 04E10003 */  bgez       $a3, .L8007B06C
/* 7BC60 8007B060 00076103 */   sra       $t4, $a3, 4
/* 7BC64 8007B064 24E1000F */  addiu      $at, $a3, 0xf
/* 7BC68 8007B068 00016103 */  sra        $t4, $at, 4
.L8007B06C:
/* 7BC6C 8007B06C 05810002 */  bgez       $t4, .L8007B078
/* 7BC70 8007B070 01803825 */   or        $a3, $t4, $zero
/* 7BC74 8007B074 000C3823 */  negu       $a3, $t4
.L8007B078:
/* 7BC78 8007B078 8E0400EC */  lw         $a0, 0xec($s0)
/* 7BC7C 8007B07C 0C00A607 */  jal        func_8002981C
/* 7BC80 8007B080 00E03025 */   or        $a2, $a3, $zero
/* 7BC84 8007B084 AE0200EC */  sw         $v0, 0xec($s0)
/* 7BC88 8007B088 3C06800C */  lui        $a2, %hi(D_800BE4F8)
/* 7BC8C 8007B08C 3C04800C */  lui        $a0, %hi(D_800BE530)
/* 7BC90 8007B090 9484E530 */  lhu        $a0, %lo(D_800BE530)($a0)
/* 7BC94 8007B094 94C6E4F8 */  lhu        $a2, %lo(D_800BE4F8)($a2)
/* 7BC98 8007B098 3C19800C */  lui        $t9, %hi(D_800BE534)
/* 7BC9C 8007B09C 00C43824 */  and        $a3, $a2, $a0
/* 7BCA0 8007B0A0 14E00021 */  bnez       $a3, .L8007B128
/* 7BCA4 8007B0A4 00000000 */   nop
/* 7BCA8 8007B0A8 9739E534 */  lhu        $t9, %lo(D_800BE534)($t9)
/* 7BCAC 8007B0AC 3C010001 */  lui        $at, 1
/* 7BCB0 8007B0B0 00D96824 */  and        $t5, $a2, $t9
/* 7BCB4 8007B0B4 15A0001C */  bnez       $t5, .L8007B128
/* 7BCB8 8007B0B8 34218001 */   ori       $at, $at, 0x8001
/* 7BCBC 8007B0BC 0041082A */  slt        $at, $v0, $at
/* 7BCC0 8007B0C0 1420000C */  bnez       $at, .L8007B0F4
/* 7BCC4 8007B0C4 00401825 */   or        $v1, $v0, $zero
/* 7BCC8 8007B0C8 8E0E0080 */  lw         $t6, 0x80($s0)
/* 7BCCC 8007B0CC 2402FFDF */  addiu      $v0, $zero, -0x21
/* 7BCD0 8007B0D0 01C2C024 */  and        $t8, $t6, $v0
/* 7BCD4 8007B0D4 AE180080 */  sw         $t8, 0x80($s0)
/* 7BCD8 8007B0D8 3C0F800F */  lui        $t7, %hi(D_800EF590)
/* 7BCDC 8007B0DC 8DEFF590 */  lw         $t7, %lo(D_800EF590)($t7)
/* 7BCE0 8007B0E0 3C01800F */  lui        $at, %hi(D_800EF590)
/* 7BCE4 8007B0E4 01E26024 */  and        $t4, $t7, $v0
/* 7BCE8 8007B0E8 AC2CF590 */  sw         $t4, %lo(D_800EF590)($at)
/* 7BCEC 8007B0EC 8E0300EC */  lw         $v1, 0xec($s0)
/* 7BCF0 8007B0F0 00000000 */  nop
.L8007B0F4:
/* 7BCF4 8007B0F4 3C01FFFE */  lui        $at, 0xfffe
/* 7BCF8 8007B0F8 34218000 */  ori        $at, $at, 0x8000
/* 7BCFC 8007B0FC 0061082A */  slt        $at, $v1, $at
/* 7BD00 8007B100 10200009 */  beqz       $at, .L8007B128
/* 7BD04 8007B104 00000000 */   nop
/* 7BD08 8007B108 8E190080 */  lw         $t9, 0x80($s0)
/* 7BD0C 8007B10C 3C0E800F */  lui        $t6, %hi(D_800EF590)
/* 7BD10 8007B110 372D0020 */  ori        $t5, $t9, 0x20
/* 7BD14 8007B114 AE0D0080 */  sw         $t5, 0x80($s0)
/* 7BD18 8007B118 8DCEF590 */  lw         $t6, %lo(D_800EF590)($t6)
/* 7BD1C 8007B11C 3C01800F */  lui        $at, %hi(D_800EF590)
/* 7BD20 8007B120 35D80020 */  ori        $t8, $t6, 0x20
/* 7BD24 8007B124 AC38F590 */  sw         $t8, %lo(D_800EF590)($at)
.L8007B128:
/* 7BD28 8007B128 3C02800C */  lui        $v0, %hi(D_800BE4FC)
/* 7BD2C 8007B12C 9442E4FC */  lhu        $v0, %lo(D_800BE4FC)($v0)
/* 7BD30 8007B130 3C0C800C */  lui        $t4, %hi(D_800BE534)
/* 7BD34 8007B134 00447824 */  and        $t7, $v0, $a0
/* 7BD38 8007B138 15E00006 */  bnez       $t7, .L8007B154
/* 7BD3C 8007B13C 00000000 */   nop
/* 7BD40 8007B140 958CE534 */  lhu        $t4, %lo(D_800BE534)($t4)
/* 7BD44 8007B144 00000000 */  nop
/* 7BD48 8007B148 004CC824 */  and        $t9, $v0, $t4
/* 7BD4C 8007B14C 1320004C */  beqz       $t9, .L8007B280
/* 7BD50 8007B150 00000000 */   nop
.L8007B154:
/* 7BD54 8007B154 C6120118 */  lwc1       $f18, 0x118($s0)
/* 7BD58 8007B158 44802000 */  mtc1       $zero, $f4
/* 7BD5C 8007B15C 3C014180 */  lui        $at, 0x4180
/* 7BD60 8007B160 4604903C */  c.lt.s     $f18, $f4
/* 7BD64 8007B164 24040043 */  addiu      $a0, $zero, 0x43
/* 7BD68 8007B168 45000045 */  bc1f       .L8007B280
/* 7BD6C 8007B16C 00000000 */   nop
/* 7BD70 8007B170 44813000 */  mtc1       $at, $f6
/* 7BD74 8007B174 97A50042 */  lhu        $a1, 0x42($sp)
/* 7BD78 8007B178 0C000DB2 */  jal        func_800036C8
/* 7BD7C 8007B17C E6060118 */   swc1      $f6, 0x118($s0)
/* 7BD80 8007B180 8E0300EC */  lw         $v1, 0xec($s0)
/* 7BD84 8007B184 3C01800F */  lui        $at, %hi(D_800ECDA0)
/* 7BD88 8007B188 44834000 */  mtc1       $v1, $f8
/* 7BD8C 8007B18C C433CDA0 */  lwc1       $f19, %lo(D_800ECDA0)($at)
/* 7BD90 8007B190 468042A0 */  cvt.s.w    $f10, $f8
/* 7BD94 8007B194 C432CDA4 */  lwc1       $f18, -0x325c($at)
/* 7BD98 8007B198 44833000 */  mtc1       $v1, $f6
/* 7BD9C 8007B19C 46005421 */  cvt.d.s    $f16, $f10
/* 7BDA0 8007B1A0 46328102 */  mul.d      $f4, $f16, $f18
/* 7BDA4 8007B1A4 46803221 */  cvt.d.w    $f8, $f6
/* 7BDA8 8007B1A8 8E05015C */  lw         $a1, 0x15c($s0)
/* 7BDAC 8007B1AC 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7BDB0 8007B1B0 44859000 */  mtc1       $a1, $f18
/* 7BDB4 8007B1B4 46244281 */  sub.d      $f10, $f8, $f4
/* 7BDB8 8007B1B8 44802000 */  mtc1       $zero, $f4
/* 7BDBC 8007B1BC 444DF800 */  cfc1       $t5, $31
/* 7BDC0 8007B1C0 3C06800C */  lui        $a2, 0x800c
/* 7BDC4 8007B1C4 35A10003 */  ori        $at, $t5, 3
/* 7BDC8 8007B1C8 38210002 */  xori       $at, $at, 2
/* 7BDCC 8007B1CC 44C1F800 */  ctc1       $at, $31
/* 7BDD0 8007B1D0 3C013FF8 */  lui        $at, 0x3ff8
/* 7BDD4 8007B1D4 46205424 */  cvt.w.d    $f16, $f10
/* 7BDD8 8007B1D8 44812800 */  mtc1       $at, $f5
/* 7BDDC 8007B1DC 44CDF800 */  ctc1       $t5, $31
/* 7BDE0 8007B1E0 E61000EC */  swc1       $f16, 0xec($s0)
/* 7BDE4 8007B1E4 468091A0 */  cvt.s.w    $f6, $f18
/* 7BDE8 8007B1E8 44858000 */  mtc1       $a1, $f16
/* 7BDEC 8007B1EC 3C0F800C */  lui        $t7, 0x800c
/* 7BDF0 8007B1F0 46003221 */  cvt.d.s    $f8, $f6
/* 7BDF4 8007B1F4 46244282 */  mul.d      $f10, $f8, $f4
/* 7BDF8 8007B1F8 468084A1 */  cvt.d.w    $f18, $f16
/* 7BDFC 8007B1FC 44842000 */  mtc1       $a0, $f4
/* 7BE00 8007B200 462A9181 */  sub.d      $f6, $f18, $f10
/* 7BE04 8007B204 444EF800 */  cfc1       $t6, $31
/* 7BE08 8007B208 00000000 */  nop
/* 7BE0C 8007B20C 35C10003 */  ori        $at, $t6, 3
/* 7BE10 8007B210 38210002 */  xori       $at, $at, 2
/* 7BE14 8007B214 44C1F800 */  ctc1       $at, $31
/* 7BE18 8007B218 3C01800F */  lui        $at, %hi(D_800ECDAC)
/* 7BE1C 8007B21C 46203224 */  cvt.w.d    $f8, $f6
/* 7BE20 8007B220 44CEF800 */  ctc1       $t6, $31
/* 7BE24 8007B224 E608015C */  swc1       $f8, 0x15c($s0)
/* 7BE28 8007B228 46802420 */  cvt.s.w    $f16, $f4
/* 7BE2C 8007B22C C42ACDAC */  lwc1       $f10, %lo(D_800ECDAC)($at)
/* 7BE30 8007B230 C42BCDA8 */  lwc1       $f11, -0x3258($at)
/* 7BE34 8007B234 460084A1 */  cvt.d.s    $f18, $f16
/* 7BE38 8007B238 462A9182 */  mul.d      $f6, $f18, $f10
/* 7BE3C 8007B23C 44844000 */  mtc1       $a0, $f8
/* 7BE40 8007B240 00000000 */  nop
/* 7BE44 8007B244 46804121 */  cvt.d.w    $f4, $f8
/* 7BE48 8007B248 46262401 */  sub.d      $f16, $f4, $f6
/* 7BE4C 8007B24C 4458F800 */  cfc1       $t8, $31
/* 7BE50 8007B250 00000000 */  nop
/* 7BE54 8007B254 37010003 */  ori        $at, $t8, 3
/* 7BE58 8007B258 38210002 */  xori       $at, $at, 2
/* 7BE5C 8007B25C 44C1F800 */  ctc1       $at, $31
/* 7BE60 8007B260 00000000 */  nop
/* 7BE64 8007B264 462084A4 */  cvt.w.d    $f18, $f16
/* 7BE68 8007B268 E61200F0 */  swc1       $f18, 0xf0($s0)
/* 7BE6C 8007B26C 95EFE530 */  lhu        $t7, -0x1ad0($t7)
/* 7BE70 8007B270 94C6E4F8 */  lhu        $a2, -0x1b08($a2)
/* 7BE74 8007B274 44D8F800 */  ctc1       $t8, $31
/* 7BE78 8007B278 1000002F */  b          .L8007B338
/* 7BE7C 8007B27C 00CF3824 */   and       $a3, $a2, $t7
.L8007B280:
/* 7BE80 8007B280 3C0C800C */  lui        $t4, %hi(D_800BE50C)
/* 7BE84 8007B284 958CE50C */  lhu        $t4, %lo(D_800BE50C)($t4)
/* 7BE88 8007B288 3C18800C */  lui        $t8, 0x800c
/* 7BE8C 8007B28C 00CCC824 */  and        $t9, $a2, $t4
/* 7BE90 8007B290 13200006 */  beqz       $t9, .L8007B2AC
/* 7BE94 8007B294 00000000 */   nop
/* 7BE98 8007B298 8E0D015C */  lw         $t5, 0x15c($s0)
/* 7BE9C 8007B29C 00000000 */  nop
/* 7BEA0 8007B2A0 25AEC000 */  addiu      $t6, $t5, -0x4000
/* 7BEA4 8007B2A4 10000024 */  b          .L8007B338
/* 7BEA8 8007B2A8 AE0E015C */   sw        $t6, 0x15c($s0)
.L8007B2AC:
/* 7BEAC 8007B2AC 9718E510 */  lhu        $t8, -0x1af0($t8)
/* 7BEB0 8007B2B0 00000000 */  nop
/* 7BEB4 8007B2B4 00D87824 */  and        $t7, $a2, $t8
/* 7BEB8 8007B2B8 11E00006 */  beqz       $t7, .L8007B2D4
/* 7BEBC 8007B2BC 00000000 */   nop
/* 7BEC0 8007B2C0 8E0C015C */  lw         $t4, 0x15c($s0)
/* 7BEC4 8007B2C4 00000000 */  nop
/* 7BEC8 8007B2C8 25994000 */  addiu      $t9, $t4, 0x4000
/* 7BECC 8007B2CC 1000001A */  b          .L8007B338
/* 7BED0 8007B2D0 AE19015C */   sw        $t9, 0x15c($s0)
.L8007B2D4:
/* 7BED4 8007B2D4 8E0D0080 */  lw         $t5, 0x80($s0)
/* 7BED8 8007B2D8 24061000 */  addiu      $a2, $zero, 0x1000
/* 7BEDC 8007B2DC 31AE0020 */  andi       $t6, $t5, 0x20
/* 7BEE0 8007B2E0 11C0000B */  beqz       $t6, .L8007B310
/* 7BEE4 8007B2E4 34058000 */   ori       $a1, $zero, 0x8000
/* 7BEE8 8007B2E8 8E04015C */  lw         $a0, 0x15c($s0)
/* 7BEEC 8007B2EC 0C00A607 */  jal        func_8002981C
/* 7BEF0 8007B2F0 24058000 */   addiu     $a1, $zero, -0x8000
/* 7BEF4 8007B2F4 AE02015C */  sw         $v0, 0x15c($s0)
/* 7BEF8 8007B2F8 3C06800C */  lui        $a2, %hi(D_800BE4F8)
/* 7BEFC 8007B2FC 3C18800C */  lui        $t8, %hi(D_800BE530)
/* 7BF00 8007B300 9718E530 */  lhu        $t8, %lo(D_800BE530)($t8)
/* 7BF04 8007B304 94C6E4F8 */  lhu        $a2, %lo(D_800BE4F8)($a2)
/* 7BF08 8007B308 1000000B */  b          .L8007B338
/* 7BF0C 8007B30C 00D83824 */   and       $a3, $a2, $t8
.L8007B310:
/* 7BF10 8007B310 8E04015C */  lw         $a0, 0x15c($s0)
/* 7BF14 8007B314 0C00A607 */  jal        func_8002981C
/* 7BF18 8007B318 24061000 */   addiu     $a2, $zero, 0x1000
/* 7BF1C 8007B31C AE02015C */  sw         $v0, 0x15c($s0)
/* 7BF20 8007B320 3C06800C */  lui        $a2, %hi(D_800BE4F8)
/* 7BF24 8007B324 3C0F800C */  lui        $t7, %hi(D_800BE530)
/* 7BF28 8007B328 95EFE530 */  lhu        $t7, %lo(D_800BE530)($t7)
/* 7BF2C 8007B32C 94C6E4F8 */  lhu        $a2, %lo(D_800BE4F8)($a2)
/* 7BF30 8007B330 00000000 */  nop
/* 7BF34 8007B334 00CF3824 */  and        $a3, $a2, $t7
.L8007B338:
/* 7BF38 8007B338 14E00006 */  bnez       $a3, .L8007B354
/* 7BF3C 8007B33C 3C0C800C */   lui       $t4, %hi(D_800BE534)
/* 7BF40 8007B340 958CE534 */  lhu        $t4, %lo(D_800BE534)($t4)
/* 7BF44 8007B344 00000000 */  nop
/* 7BF48 8007B348 00CCC824 */  and        $t9, $a2, $t4
/* 7BF4C 8007B34C 13200009 */  beqz       $t9, .L8007B374
/* 7BF50 8007B350 00000000 */   nop
.L8007B354:
/* 7BF54 8007B354 8E04015C */  lw         $a0, 0x15c($s0)
/* 7BF58 8007B358 3C050002 */  lui        $a1, 2
/* 7BF5C 8007B35C 0C00A824 */  jal        func_8002A090
/* 7BF60 8007B360 34A58000 */   ori       $a1, $a1, 0x8000
/* 7BF64 8007B364 3C070004 */  lui        $a3, 4
/* 7BF68 8007B368 AE02015C */  sw         $v0, 0x15c($s0)
/* 7BF6C 8007B36C 10000007 */  b          .L8007B38C
/* 7BF70 8007B370 34E78000 */   ori       $a3, $a3, 0x8000
.L8007B374:
/* 7BF74 8007B374 8E04015C */  lw         $a0, 0x15c($s0)
/* 7BF78 8007B378 0C00A824 */  jal        func_8002A090
/* 7BF7C 8007B37C 3C050008 */   lui       $a1, 8
/* 7BF80 8007B380 3C070003 */  lui        $a3, 3
/* 7BF84 8007B384 AE02015C */  sw         $v0, 0x15c($s0)
/* 7BF88 8007B388 34E78000 */  ori        $a3, $a3, 0x8000
.L8007B38C:
/* 7BF8C 8007B38C C60A0118 */  lwc1       $f10, 0x118($s0)
/* 7BF90 8007B390 44804000 */  mtc1       $zero, $f8
/* 7BF94 8007B394 00002825 */  or         $a1, $zero, $zero
/* 7BF98 8007B398 460A403E */  c.le.s     $f8, $f10
/* 7BF9C 8007B39C 3C06800C */  lui        $a2, 0x800c
/* 7BFA0 8007B3A0 45000006 */  bc1f       .L8007B3BC
/* 7BFA4 8007B3A4 3C0D800C */   lui       $t5, 0x800c
/* 7BFA8 8007B3A8 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7BFAC 8007B3AC 0C00A607 */  jal        func_8002981C
/* 7BFB0 8007B3B0 24061000 */   addiu     $a2, $zero, 0x1000
/* 7BFB4 8007B3B4 10000034 */  b          .L8007B488
/* 7BFB8 8007B3B8 AE0200F0 */   sw        $v0, 0xf0($s0)
.L8007B3BC:
/* 7BFBC 8007B3BC 94C6E4F8 */  lhu        $a2, -0x1b08($a2)
/* 7BFC0 8007B3C0 95ADE504 */  lhu        $t5, -0x1afc($t5)
/* 7BFC4 8007B3C4 00E02825 */  or         $a1, $a3, $zero
/* 7BFC8 8007B3C8 00CD7024 */  and        $t6, $a2, $t5
/* 7BFCC 8007B3CC 11C00006 */  beqz       $t6, .L8007B3E8
/* 7BFD0 8007B3D0 3C18800C */   lui       $t8, 0x800c
/* 7BFD4 8007B3D4 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7BFD8 8007B3D8 0C00A607 */  jal        func_8002981C
/* 7BFDC 8007B3DC 24064000 */   addiu     $a2, $zero, 0x4000
/* 7BFE0 8007B3E0 10000029 */  b          .L8007B488
/* 7BFE4 8007B3E4 AE0200F0 */   sw        $v0, 0xf0($s0)
.L8007B3E8:
/* 7BFE8 8007B3E8 9718E508 */  lhu        $t8, -0x1af8($t8)
/* 7BFEC 8007B3EC 00072823 */  negu       $a1, $a3
/* 7BFF0 8007B3F0 00D87824 */  and        $t7, $a2, $t8
/* 7BFF4 8007B3F4 11E00006 */  beqz       $t7, .L8007B410
/* 7BFF8 8007B3F8 3C010002 */   lui       $at, 2
/* 7BFFC 8007B3FC 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7C000 8007B400 0C00A607 */  jal        func_8002981C
/* 7C004 8007B404 24064000 */   addiu     $a2, $zero, 0x4000
/* 7C008 8007B408 1000001F */  b          .L8007B488
/* 7C00C 8007B40C AE0200F0 */   sw        $v0, 0xf0($s0)
.L8007B410:
/* 7C010 8007B410 8E0300EC */  lw         $v1, 0xec($s0)
/* 7C014 8007B414 34210001 */  ori        $at, $at, 1
/* 7C018 8007B418 0061082A */  slt        $at, $v1, $at
/* 7C01C 8007B41C 10200005 */  beqz       $at, .L8007B434
/* 7C020 8007B420 00002825 */   or        $a1, $zero, $zero
/* 7C024 8007B424 3C01FFFE */  lui        $at, 0xfffe
/* 7C028 8007B428 0061082A */  slt        $at, $v1, $at
/* 7C02C 8007B42C 10200006 */  beqz       $at, .L8007B448
/* 7C030 8007B430 3C0C800C */   lui       $t4, 0x800c
.L8007B434:
/* 7C034 8007B434 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7C038 8007B438 0C00A607 */  jal        func_8002981C
/* 7C03C 8007B43C 24064000 */   addiu     $a2, $zero, 0x4000
/* 7C040 8007B440 10000011 */  b          .L8007B488
/* 7C044 8007B444 AE0200F0 */   sw        $v0, 0xf0($s0)
.L8007B448:
/* 7C048 8007B448 958CE4E0 */  lhu        $t4, -0x1b20($t4)
/* 7C04C 8007B44C 3C05FFFE */  lui        $a1, 0xfffe
/* 7C050 8007B450 31990010 */  andi       $t9, $t4, 0x10
/* 7C054 8007B454 13200008 */  beqz       $t9, .L8007B478
/* 7C058 8007B458 34A58000 */   ori       $a1, $a1, 0x8000
/* 7C05C 8007B45C 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7C060 8007B460 3C050001 */  lui        $a1, 1
/* 7C064 8007B464 34A58000 */  ori        $a1, $a1, 0x8000
/* 7C068 8007B468 0C00A607 */  jal        func_8002981C
/* 7C06C 8007B46C 24064000 */   addiu     $a2, $zero, 0x4000
/* 7C070 8007B470 10000005 */  b          .L8007B488
/* 7C074 8007B474 AE0200F0 */   sw        $v0, 0xf0($s0)
.L8007B478:
/* 7C078 8007B478 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 7C07C 8007B47C 0C00A607 */  jal        func_8002981C
/* 7C080 8007B480 24064000 */   addiu     $a2, $zero, 0x4000
/* 7C084 8007B484 AE0200F0 */  sw         $v0, 0xf0($s0)
.L8007B488:
/* 7C088 8007B488 C6000118 */  lwc1       $f0, 0x118($s0)
/* 7C08C 8007B48C 44802000 */  mtc1       $zero, $f4
/* 7C090 8007B490 3C18800F */  lui        $t8, %hi(gActors)
/* 7C094 8007B494 4600203E */  c.le.s     $f4, $f0
/* 7C098 8007B498 3C013F80 */  lui        $at, 0x3f80
/* 7C09C 8007B49C 45000005 */  bc1f       .L8007B4B4
/* 7C0A0 8007B4A0 2718F510 */   addiu     $t8, $t8, %lo(gActors)
/* 7C0A4 8007B4A4 44813000 */  mtc1       $at, $f6
/* 7C0A8 8007B4A8 00000000 */  nop
/* 7C0AC 8007B4AC 46060401 */  sub.s      $f16, $f0, $f6
/* 7C0B0 8007B4B0 E6100118 */  swc1       $f16, 0x118($s0)
.L8007B4B4:
/* 7C0B4 8007B4B4 97AD0042 */  lhu        $t5, 0x42($sp)
/* 7C0B8 8007B4B8 8E0F0098 */  lw         $t7, 0x98($s0)
/* 7C0BC 8007B4BC 000D7080 */  sll        $t6, $t5, 2
/* 7C0C0 8007B4C0 01CD7023 */  subu       $t6, $t6, $t5
/* 7C0C4 8007B4C4 000E7080 */  sll        $t6, $t6, 2
/* 7C0C8 8007B4C8 01CD7021 */  addu       $t6, $t6, $t5
/* 7C0CC 8007B4CC 000E7080 */  sll        $t6, $t6, 2
/* 7C0D0 8007B4D0 01CD7023 */  subu       $t6, $t6, $t5
/* 7C0D4 8007B4D4 000E70C0 */  sll        $t6, $t6, 3
/* 7C0D8 8007B4D8 01D81821 */  addu       $v1, $t6, $t8
/* 7C0DC 8007B4DC 8C6C0230 */  lw         $t4, 0x230($v1)
/* 7C0E0 8007B4E0 3C0EFFFE */  lui        $t6, 0xfffe
/* 7C0E4 8007B4E4 01ECC825 */  or         $t9, $t7, $t4
/* 7C0E8 8007B4E8 332D0010 */  andi       $t5, $t9, 0x10
/* 7C0EC 8007B4EC AE190098 */  sw         $t9, 0x98($s0)
/* 7C0F0 8007B4F0 11A00005 */  beqz       $t5, .L8007B508
/* 7C0F4 8007B4F4 03201025 */   or        $v0, $t9, $zero
/* 7C0F8 8007B4F8 AE0E00F0 */  sw         $t6, 0xf0($s0)
/* 7C0FC 8007B4FC 84780224 */  lh         $t8, 0x224($v1)
/* 7C100 8007B500 03201025 */  or         $v0, $t9, $zero
/* 7C104 8007B504 A618008C */  sh         $t8, 0x8c($s0)
.L8007B508:
/* 7C108 8007B508 304F0020 */  andi       $t7, $v0, 0x20
/* 7C10C 8007B50C 11E00005 */  beqz       $t7, .L8007B524
/* 7C110 8007B510 3C0C0002 */   lui       $t4, 2
/* 7C114 8007B514 AE0C00F0 */  sw         $t4, 0xf0($s0)
/* 7C118 8007B518 84790224 */  lh         $t9, 0x224($v1)
/* 7C11C 8007B51C 8E020098 */  lw         $v0, 0x98($s0)
/* 7C120 8007B520 A619008C */  sh         $t9, 0x8c($s0)
.L8007B524:
/* 7C124 8007B524 304D0004 */  andi       $t5, $v0, 4
/* 7C128 8007B528 15A0000E */  bnez       $t5, .L8007B564
/* 7C12C 8007B52C 3C0D0002 */   lui       $t5, 2
/* 7C130 8007B530 846F0246 */  lh         $t7, 0x246($v1)
/* 7C134 8007B534 846C0224 */  lh         $t4, 0x224($v1)
/* 7C138 8007B538 846E0242 */  lh         $t6, 0x242($v1)
/* 7C13C 8007B53C 84780220 */  lh         $t8, 0x220($v1)
/* 7C140 8007B540 01EC2821 */  addu       $a1, $t7, $t4
/* 7C144 8007B544 24A5FFF8 */  addiu      $a1, $a1, -8
/* 7C148 8007B548 AFA30024 */  sw         $v1, 0x24($sp)
/* 7C14C 8007B54C 0C004AAD */  jal        func_80012AB4
/* 7C150 8007B550 01D82021 */   addu      $a0, $t6, $t8
/* 7C154 8007B554 8FA30024 */  lw         $v1, 0x24($sp)
/* 7C158 8007B558 30590080 */  andi       $t9, $v0, 0x80
/* 7C15C 8007B55C 13200005 */  beqz       $t9, .L8007B574
/* 7C160 8007B560 3C0D0002 */   lui       $t5, 2
.L8007B564:
/* 7C164 8007B564 AE0D00EC */  sw         $t5, 0xec($s0)
/* 7C168 8007B568 846E0220 */  lh         $t6, 0x220($v1)
/* 7C16C 8007B56C AE00015C */  sw         $zero, 0x15c($s0)
/* 7C170 8007B570 A60E0088 */  sh         $t6, 0x88($s0)
.L8007B574:
/* 7C174 8007B574 8E180098 */  lw         $t8, 0x98($s0)
/* 7C178 8007B578 00000000 */  nop
/* 7C17C 8007B57C 330F0008 */  andi       $t7, $t8, 8
/* 7C180 8007B580 15E0000E */  bnez       $t7, .L8007B5BC
/* 7C184 8007B584 3C0FFFFE */   lui       $t7, 0xfffe
/* 7C188 8007B588 846D0246 */  lh         $t5, 0x246($v1)
/* 7C18C 8007B58C 846E0224 */  lh         $t6, 0x224($v1)
/* 7C190 8007B590 846C0244 */  lh         $t4, 0x244($v1)
/* 7C194 8007B594 84790220 */  lh         $t9, 0x220($v1)
/* 7C198 8007B598 01AE2821 */  addu       $a1, $t5, $t6
/* 7C19C 8007B59C 24A5FFF8 */  addiu      $a1, $a1, -8
/* 7C1A0 8007B5A0 AFA30024 */  sw         $v1, 0x24($sp)
/* 7C1A4 8007B5A4 0C004AAD */  jal        func_80012AB4
/* 7C1A8 8007B5A8 01992021 */   addu      $a0, $t4, $t9
/* 7C1AC 8007B5AC 8FA30024 */  lw         $v1, 0x24($sp)
/* 7C1B0 8007B5B0 30580080 */  andi       $t8, $v0, 0x80
/* 7C1B4 8007B5B4 13000005 */  beqz       $t8, .L8007B5CC
/* 7C1B8 8007B5B8 3C0FFFFE */   lui       $t7, 0xfffe
.L8007B5BC:
/* 7C1BC 8007B5BC AE0F00EC */  sw         $t7, 0xec($s0)
/* 7C1C0 8007B5C0 846C0220 */  lh         $t4, 0x220($v1)
/* 7C1C4 8007B5C4 AE00015C */  sw         $zero, 0x15c($s0)
/* 7C1C8 8007B5C8 A60C0088 */  sh         $t4, 0x88($s0)
.L8007B5CC:
/* 7C1CC 8007B5CC 86190088 */  lh         $t9, 0x88($s0)
/* 7C1D0 8007B5D0 00000000 */  nop
/* 7C1D4 8007B5D4 A4790220 */  sh         $t9, 0x220($v1)
/* 7C1D8 8007B5D8 860D008C */  lh         $t5, 0x8c($s0)
/* 7C1DC 8007B5DC 00000000 */  nop
/* 7C1E0 8007B5E0 A46D0224 */  sh         $t5, 0x224($v1)
/* 7C1E4 8007B5E4 8E0E00EC */  lw         $t6, 0xec($s0)
/* 7C1E8 8007B5E8 00000000 */  nop
/* 7C1EC 8007B5EC AC6E0284 */  sw         $t6, 0x284($v1)
/* 7C1F0 8007B5F0 8E1800F0 */  lw         $t8, 0xf0($s0)
/* 7C1F4 8007B5F4 AC600230 */  sw         $zero, 0x230($v1)
/* 7C1F8 8007B5F8 AC780288 */  sw         $t8, 0x288($v1)
.L8007B5FC:
/* 7C1FC 8007B5FC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7C200 8007B600 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C204 8007B604 03E00008 */  jr         $ra
/* 7C208 8007B608 27BD0040 */   addiu     $sp, $sp, 0x40
