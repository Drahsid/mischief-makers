glabel func_8005A930
/* 5B530 8005A930 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 5B534 8005A934 444EF800 */  cfc1       $t6, $31
/* 5B538 8005A938 AFB1004C */  sw         $s1, 0x4c($sp)
/* 5B53C 8005A93C 00808825 */  or         $s1, $a0, $zero
/* 5B540 8005A940 AFBF006C */  sw         $ra, 0x6c($sp)
/* 5B544 8005A944 AFBE0068 */  sw         $fp, 0x68($sp)
/* 5B548 8005A948 AFB70064 */  sw         $s7, 0x64($sp)
/* 5B54C 8005A94C AFB60060 */  sw         $s6, 0x60($sp)
/* 5B550 8005A950 AFB5005C */  sw         $s5, 0x5c($sp)
/* 5B554 8005A954 AFB40058 */  sw         $s4, 0x58($sp)
/* 5B558 8005A958 AFB30054 */  sw         $s3, 0x54($sp)
/* 5B55C 8005A95C AFB20050 */  sw         $s2, 0x50($sp)
/* 5B560 8005A960 AFB00048 */  sw         $s0, 0x48($sp)
/* 5B564 8005A964 E7BD0040 */  swc1       $f29, 0x40($sp)
/* 5B568 8005A968 E7BC0044 */  swc1       $f28, 0x44($sp)
/* 5B56C 8005A96C E7BB0038 */  swc1       $f27, 0x38($sp)
/* 5B570 8005A970 E7BA003C */  swc1       $f26, 0x3c($sp)
/* 5B574 8005A974 E7B90030 */  swc1       $f25, 0x30($sp)
/* 5B578 8005A978 E7B80034 */  swc1       $f24, 0x34($sp)
/* 5B57C 8005A97C E7B70028 */  swc1       $f23, 0x28($sp)
/* 5B580 8005A980 E7B6002C */  swc1       $f22, 0x2c($sp)
/* 5B584 8005A984 E7B50020 */  swc1       $f21, 0x20($sp)
/* 5B588 8005A988 E7B40024 */  swc1       $f20, 0x24($sp)
/* 5B58C 8005A98C 35C10003 */  ori        $at, $t6, 3
/* 5B590 8005A990 92280002 */  lbu        $t0, 2($s1)
/* 5B594 8005A994 92270003 */  lbu        $a3, 3($s1)
/* 5B598 8005A998 38210002 */  xori       $at, $at, 2
/* 5B59C 8005A99C 44C1F800 */  ctc1       $at, $31
/* 5B5A0 8005A9A0 C4840020 */  lwc1       $f4, 0x20($a0)
/* 5B5A4 8005A9A4 3C04800E */  lui        $a0, 0x800e
/* 5B5A8 8005A9A8 460021A4 */  cvt.w.s    $f6, $f4
/* 5B5AC 8005A9AC 3C05800E */  lui        $a1, %hi(D_800D84CA)
/* 5B5B0 8005A9B0 44133000 */  mfc1       $s3, $f6
/* 5B5B4 8005A9B4 44CEF800 */  ctc1       $t6, $31
/* 5B5B8 8005A9B8 24A584CA */  addiu      $a1, $a1, %lo(D_800D84CA)
/* 5B5BC 8005A9BC 248482EA */  addiu      $a0, $a0, -0x7d16
/* 5B5C0 8005A9C0 2406000F */  addiu      $a2, $zero, 0xf
/* 5B5C4 8005A9C4 04E10003 */  bgez       $a3, .L8005A9D4
/* 5B5C8 8005A9C8 000778C3 */   sra       $t7, $a3, 3
/* 5B5CC 8005A9CC 24E10007 */  addiu      $at, $a3, 7
/* 5B5D0 8005A9D0 000178C3 */  sra        $t7, $at, 3
.L8005A9D4:
/* 5B5D4 8005A9D4 000FC400 */  sll        $t8, $t7, 0x10
/* 5B5D8 8005A9D8 0018CC03 */  sra        $t9, $t8, 0x10
/* 5B5DC 8005A9DC 03203825 */  or         $a3, $t9, $zero
/* 5B5E0 8005A9E0 05010003 */  bgez       $t0, .L8005A9F0
/* 5B5E4 8005A9E4 000848C3 */   sra       $t1, $t0, 3
/* 5B5E8 8005A9E8 25010007 */  addiu      $at, $t0, 7
/* 5B5EC 8005A9EC 000148C3 */  sra        $t1, $at, 3
.L8005A9F0:
/* 5B5F0 8005A9F0 AFA90010 */  sw         $t1, 0x10($sp)
/* 5B5F4 8005A9F4 922A0001 */  lbu        $t2, 1($s1)
/* 5B5F8 8005A9F8 00000000 */  nop
/* 5B5FC 8005A9FC 05410003 */  bgez       $t2, .L8005AA0C
/* 5B600 8005AA00 000A58C3 */   sra       $t3, $t2, 3
/* 5B604 8005AA04 25410007 */  addiu      $at, $t2, 7
/* 5B608 8005AA08 000158C3 */  sra        $t3, $at, 3
.L8005AA0C:
/* 5B60C 8005AA0C 0C00AE0B */  jal        func_8002B82C
/* 5B610 8005AA10 AFAB0014 */   sw        $t3, 0x14($sp)
/* 5B614 8005AA14 3C01C100 */  lui        $at, 0xc100
/* 5B618 8005AA18 4481E000 */  mtc1       $at, $f28
/* 5B61C 8005AA1C 3C014180 */  lui        $at, 0x4180
/* 5B620 8005AA20 4481D000 */  mtc1       $at, $f26
/* 5B624 8005AA24 3C014100 */  lui        $at, 0x4100
/* 5B628 8005AA28 3C16800C */  lui        $s6, %hi(D_800BCCD0)
/* 5B62C 8005AA2C 3C14800F */  lui        $s4, %hi(gActors)
/* 5B630 8005AA30 4481C000 */  mtc1       $at, $f24
/* 5B634 8005AA34 4480B000 */  mtc1       $zero, $f22
/* 5B638 8005AA38 2694F510 */  addiu      $s4, $s4, %lo(gActors)
/* 5B63C 8005AA3C 26D6CCD0 */  addiu      $s6, $s6, %lo(D_800BCCD0)
/* 5B640 8005AA40 00009025 */  or         $s2, $zero, $zero
/* 5B644 8005AA44 26370008 */  addiu      $s7, $s1, 8
/* 5B648 8005AA48 241E0162 */  addiu      $fp, $zero, 0x162
/* 5B64C 8005AA4C 24150198 */  addiu      $s5, $zero, 0x198
.L8005AA50:
/* 5B650 8005AA50 96240004 */  lhu        $a0, 4($s1)
/* 5B654 8005AA54 0C0164A8 */  jal        func_800592A0
/* 5B658 8005AA58 02E02825 */   or        $a1, $s7, $zero
/* 5B65C 8005AA5C 14400003 */  bnez       $v0, .L8005AA6C
/* 5B660 8005AA60 3045FFFF */   andi      $a1, $v0, 0xffff
/* 5B664 8005AA64 1000007A */  b          .L8005AC50
/* 5B668 8005AA68 00001025 */   or        $v0, $zero, $zero
.L8005AA6C:
/* 5B66C 8005AA6C 00550019 */  multu      $v0, $s5
/* 5B670 8005AA70 3C06800E */  lui        $a2, %hi(D_800D84C8)
/* 5B674 8005AA74 24C684C8 */  addiu      $a2, $a2, %lo(D_800D84C8)
/* 5B678 8005AA78 00006012 */  mflo       $t4
/* 5B67C 8005AA7C 028C1821 */  addu       $v1, $s4, $t4
/* 5B680 8005AA80 8C6F0080 */  lw         $t7, 0x80($v1)
/* 5B684 8005AA84 946D0094 */  lhu        $t5, 0x94($v1)
/* 5B688 8005AA88 8C790088 */  lw         $t9, 0x88($v1)
/* 5B68C 8005AA8C 8C68008C */  lw         $t0, 0x8c($v1)
/* 5B690 8005AA90 35F88000 */  ori        $t8, $t7, 0x8000
/* 5B694 8005AA94 330A0020 */  andi       $t2, $t8, 0x20
/* 5B698 8005AA98 35AE0209 */  ori        $t6, $t5, 0x209
/* 5B69C 8005AA9C A46E0094 */  sh         $t6, 0x94($v1)
/* 5B6A0 8005AAA0 AC780080 */  sw         $t8, 0x80($v1)
/* 5B6A4 8005AAA4 E4760148 */  swc1       $f22, 0x148($v1)
/* 5B6A8 8005AAA8 AC790184 */  sw         $t9, 0x184($v1)
/* 5B6AC 8005AAAC 11400003 */  beqz       $t2, .L8005AABC
/* 5B6B0 8005AAB0 AC680188 */   sw        $t0, 0x188($v1)
/* 5B6B4 8005AAB4 10000002 */  b          .L8005AAC0
/* 5B6B8 8005AAB8 E4780140 */   swc1      $f24, 0x140($v1)
.L8005AABC:
/* 5B6BC 8005AABC E47C0140 */  swc1       $f28, 0x140($v1)
.L8005AAC0:
/* 5B6C0 8005AAC0 E4760144 */  swc1       $f22, 0x144($v1)
/* 5B6C4 8005AAC4 8E240018 */  lw         $a0, 0x18($s1)
/* 5B6C8 8005AAC8 00000000 */  nop
/* 5B6CC 8005AACC 14800003 */  bnez       $a0, .L8005AADC
/* 5B6D0 8005AAD0 00000000 */   nop
/* 5B6D4 8005AAD4 10000002 */  b          .L8005AAE0
/* 5B6D8 8005AAD8 A47E0084 */   sh        $fp, 0x84($v1)
.L8005AADC:
/* 5B6DC 8005AADC A4640084 */  sh         $a0, 0x84($v1)
.L8005AAE0:
/* 5B6E0 8005AAE0 00B50019 */  multu      $a1, $s5
/* 5B6E4 8005AAE4 00005812 */  mflo       $t3
/* 5B6E8 8005AAE8 028B8021 */  addu       $s0, $s4, $t3
/* 5B6EC 8005AAEC 0C0005E3 */  jal        func_8000178C
/* 5B6F0 8005AAF0 AE06018C */   sw        $a2, 0x18c($s0)
/* 5B6F4 8005AAF4 922C0000 */  lbu        $t4, ($s1)
/* 5B6F8 8005AAF8 C6280020 */  lwc1       $f8, 0x20($s1)
/* 5B6FC 8005AAFC 004C001A */  div        $zero, $v0, $t4
/* 5B700 8005AB00 15800002 */  bnez       $t4, .L8005AB0C
/* 5B704 8005AB04 00000000 */   nop
/* 5B708 8005AB08 0007000D */  break      7
.L8005AB0C:
/* 5B70C 8005AB0C 2401FFFF */   addiu     $at, $zero, -1
/* 5B710 8005AB10 15810004 */  bne        $t4, $at, .L8005AB24
/* 5B714 8005AB14 3C018000 */   lui       $at, 0x8000
/* 5B718 8005AB18 14410002 */  bne        $v0, $at, .L8005AB24
/* 5B71C 8005AB1C 00000000 */   nop
/* 5B720 8005AB20 0006000D */  break      6
.L8005AB24:
/* 5B724 8005AB24 00006810 */   mfhi      $t5
/* 5B728 8005AB28 000D7100 */  sll        $t6, $t5, 4
/* 5B72C 8005AB2C 25CF0020 */  addiu      $t7, $t6, 0x20
/* 5B730 8005AB30 448F5000 */  mtc1       $t7, $f10
/* 5B734 8005AB34 00000000 */  nop
/* 5B738 8005AB38 46805420 */  cvt.s.w    $f16, $f10
/* 5B73C 8005AB3C 00000000 */  nop
/* 5B740 8005AB40 46104503 */  div.s      $f20, $f8, $f16
/* 5B744 8005AB44 0C0005E3 */  jal        func_8000178C
/* 5B748 8005AB48 E61400B4 */   swc1      $f20, 0xb4($s0)
/* 5B74C 8005AB4C 4614D482 */  mul.s      $f18, $f26, $f20
/* 5B750 8005AB50 8E39001C */  lw         $t9, 0x1c($s1)
/* 5B754 8005AB54 0002C400 */  sll        $t8, $v0, 0x10
/* 5B758 8005AB58 3C01FF80 */  lui        $at, 0xff80
/* 5B75C 8005AB5C 4448F800 */  cfc1       $t0, $31
/* 5B760 8005AB60 03191821 */  addu       $v1, $t8, $t9
/* 5B764 8005AB64 00611821 */  addu       $v1, $v1, $at
/* 5B768 8005AB68 35010003 */  ori        $at, $t0, 3
/* 5B76C 8005AB6C 38210002 */  xori       $at, $at, 2
/* 5B770 8005AB70 44C1F800 */  ctc1       $at, $31
/* 5B774 8005AB74 AE030160 */  sw         $v1, 0x160($s0)
/* 5B778 8005AB78 46009124 */  cvt.w.s    $f4, $f18
/* 5B77C 8005AB7C 8E290008 */  lw         $t1, 8($s1)
/* 5B780 8005AB80 44042000 */  mfc1       $a0, $f4
/* 5B784 8005AB84 44C8F800 */  ctc1       $t0, $31
/* 5B788 8005AB88 44843000 */  mtc1       $a0, $f6
/* 5B78C 8005AB8C 44895000 */  mtc1       $t1, $f10
/* 5B790 8005AB90 46803020 */  cvt.s.w    $f0, $f6
/* 5B794 8005AB94 04610004 */  bgez       $v1, .L8005ABA8
/* 5B798 8005AB98 00032C03 */   sra       $a1, $v1, 0x10
/* 5B79C 8005AB9C 3401FFFF */  ori        $at, $zero, 0xffff
/* 5B7A0 8005ABA0 00230821 */  addu       $at, $at, $v1
/* 5B7A4 8005ABA4 00012C03 */  sra        $a1, $at, 0x10
.L8005ABA8:
/* 5B7A8 8005ABA8 30AA03FF */  andi       $t2, $a1, 0x3ff
/* 5B7AC 8005ABAC 000A5880 */  sll        $t3, $t2, 2
/* 5B7B0 8005ABB0 02CB6021 */  addu       $t4, $s6, $t3
/* 5B7B4 8005ABB4 C5900000 */  lwc1       $f16, ($t4)
/* 5B7B8 8005ABB8 46805220 */  cvt.s.w    $f8, $f10
/* 5B7BC 8005ABBC 24B8FF00 */  addiu      $t8, $a1, -0x100
/* 5B7C0 8005ABC0 331903FF */  andi       $t9, $t8, 0x3ff
/* 5B7C4 8005ABC4 46100482 */  mul.s      $f18, $f0, $f16
/* 5B7C8 8005ABC8 00194080 */  sll        $t0, $t9, 2
/* 5B7CC 8005ABCC 8E2F000C */  lw         $t7, 0xc($s1)
/* 5B7D0 8005ABD0 02C84821 */  addu       $t1, $s6, $t0
/* 5B7D4 8005ABD4 46124100 */  add.s      $f4, $f8, $f18
/* 5B7D8 8005ABD8 448F5000 */  mtc1       $t7, $f10
/* 5B7DC 8005ABDC 444DF800 */  cfc1       $t5, $31
/* 5B7E0 8005ABE0 26520001 */  addiu      $s2, $s2, 1
/* 5B7E4 8005ABE4 35A10003 */  ori        $at, $t5, 3
/* 5B7E8 8005ABE8 38210002 */  xori       $at, $at, 2
/* 5B7EC 8005ABEC 44C1F800 */  ctc1       $at, $31
/* 5B7F0 8005ABF0 324CFFFF */  andi       $t4, $s2, 0xffff
/* 5B7F4 8005ABF4 460021A4 */  cvt.w.s    $f6, $f4
/* 5B7F8 8005ABF8 02649823 */  subu       $s3, $s3, $a0
/* 5B7FC 8005ABFC 440E3000 */  mfc1       $t6, $f6
/* 5B800 8005AC00 44CDF800 */  ctc1       $t5, $31
/* 5B804 8005AC04 AE2E0008 */  sw         $t6, 8($s1)
/* 5B808 8005AC08 C5280000 */  lwc1       $f8, ($t1)
/* 5B80C 8005AC0C 46805420 */  cvt.s.w    $f16, $f10
/* 5B810 8005AC10 46080482 */  mul.s      $f18, $f0, $f8
/* 5B814 8005AC14 46128100 */  add.s      $f4, $f16, $f18
/* 5B818 8005AC18 444AF800 */  cfc1       $t2, $31
/* 5B81C 8005AC1C 00000000 */  nop
/* 5B820 8005AC20 35410003 */  ori        $at, $t2, 3
/* 5B824 8005AC24 38210002 */  xori       $at, $at, 2
/* 5B828 8005AC28 44C1F800 */  ctc1       $at, $31
/* 5B82C 8005AC2C 29810008 */  slti       $at, $t4, 8
/* 5B830 8005AC30 460021A4 */  cvt.w.s    $f6, $f4
/* 5B834 8005AC34 440B3000 */  mfc1       $t3, $f6
/* 5B838 8005AC38 44CAF800 */  ctc1       $t2, $31
/* 5B83C 8005AC3C 06600003 */  bltz       $s3, .L8005AC4C
/* 5B840 8005AC40 AE2B000C */   sw        $t3, 0xc($s1)
/* 5B844 8005AC44 1420FF82 */  bnez       $at, .L8005AA50
/* 5B848 8005AC48 01809025 */   or        $s2, $t4, $zero
.L8005AC4C:
/* 5B84C 8005AC4C 24020001 */  addiu      $v0, $zero, 1
.L8005AC50:
/* 5B850 8005AC50 8FBF006C */  lw         $ra, 0x6c($sp)
/* 5B854 8005AC54 C7B50020 */  lwc1       $f21, 0x20($sp)
/* 5B858 8005AC58 C7B40024 */  lwc1       $f20, 0x24($sp)
/* 5B85C 8005AC5C C7B70028 */  lwc1       $f23, 0x28($sp)
/* 5B860 8005AC60 C7B6002C */  lwc1       $f22, 0x2c($sp)
/* 5B864 8005AC64 C7B90030 */  lwc1       $f25, 0x30($sp)
/* 5B868 8005AC68 C7B80034 */  lwc1       $f24, 0x34($sp)
/* 5B86C 8005AC6C C7BB0038 */  lwc1       $f27, 0x38($sp)
/* 5B870 8005AC70 C7BA003C */  lwc1       $f26, 0x3c($sp)
/* 5B874 8005AC74 C7BD0040 */  lwc1       $f29, 0x40($sp)
/* 5B878 8005AC78 C7BC0044 */  lwc1       $f28, 0x44($sp)
/* 5B87C 8005AC7C 8FB00048 */  lw         $s0, 0x48($sp)
/* 5B880 8005AC80 8FB1004C */  lw         $s1, 0x4c($sp)
/* 5B884 8005AC84 8FB20050 */  lw         $s2, 0x50($sp)
/* 5B888 8005AC88 8FB30054 */  lw         $s3, 0x54($sp)
/* 5B88C 8005AC8C 8FB40058 */  lw         $s4, 0x58($sp)
/* 5B890 8005AC90 8FB5005C */  lw         $s5, 0x5c($sp)
/* 5B894 8005AC94 8FB60060 */  lw         $s6, 0x60($sp)
/* 5B898 8005AC98 8FB70064 */  lw         $s7, 0x64($sp)
/* 5B89C 8005AC9C 8FBE0068 */  lw         $fp, 0x68($sp)
/* 5B8A0 8005ACA0 03E00008 */  jr         $ra
/* 5B8A4 8005ACA4 27BD0070 */   addiu     $sp, $sp, 0x70
