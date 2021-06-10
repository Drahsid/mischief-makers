glabel func_8007EA14
/* 7F614 8007EA14 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 7F618 8007EA18 AFBF006C */  sw         $ra, 0x6c($sp)
/* 7F61C 8007EA1C AFBE0068 */  sw         $fp, 0x68($sp)
/* 7F620 8007EA20 AFB70064 */  sw         $s7, 0x64($sp)
/* 7F624 8007EA24 AFB60060 */  sw         $s6, 0x60($sp)
/* 7F628 8007EA28 AFB5005C */  sw         $s5, 0x5c($sp)
/* 7F62C 8007EA2C AFB40058 */  sw         $s4, 0x58($sp)
/* 7F630 8007EA30 AFB30054 */  sw         $s3, 0x54($sp)
/* 7F634 8007EA34 AFB20050 */  sw         $s2, 0x50($sp)
/* 7F638 8007EA38 AFB1004C */  sw         $s1, 0x4c($sp)
/* 7F63C 8007EA3C AFB00048 */  sw         $s0, 0x48($sp)
/* 7F640 8007EA40 E7BF0040 */  swc1       $f31, 0x40($sp)
/* 7F644 8007EA44 E7BE0044 */  swc1       $f30, 0x44($sp)
/* 7F648 8007EA48 E7BD0038 */  swc1       $f29, 0x38($sp)
/* 7F64C 8007EA4C E7BC003C */  swc1       $f28, 0x3c($sp)
/* 7F650 8007EA50 E7BB0030 */  swc1       $f27, 0x30($sp)
/* 7F654 8007EA54 E7BA0034 */  swc1       $f26, 0x34($sp)
/* 7F658 8007EA58 E7B90028 */  swc1       $f25, 0x28($sp)
/* 7F65C 8007EA5C E7B8002C */  swc1       $f24, 0x2c($sp)
/* 7F660 8007EA60 E7B70020 */  swc1       $f23, 0x20($sp)
/* 7F664 8007EA64 E7B60024 */  swc1       $f22, 0x24($sp)
/* 7F668 8007EA68 E7B50018 */  swc1       $f21, 0x18($sp)
/* 7F66C 8007EA6C E7B4001C */  swc1       $f20, 0x1c($sp)
/* 7F670 8007EA70 AFA50094 */  sw         $a1, 0x94($sp)
/* 7F674 8007EA74 AFA60098 */  sw         $a2, 0x98($sp)
/* 7F678 8007EA78 AFA7009C */  sw         $a3, 0x9c($sp)
/* 7F67C 8007EA7C 94820000 */  lhu        $v0, ($a0)
/* 7F680 8007EA80 3C01BF80 */  lui        $at, 0xbf80
/* 7F684 8007EA84 34038FFF */  ori        $v1, $zero, 0x8fff
/* 7F688 8007EA88 4481B000 */  mtc1       $at, $f22
/* 7F68C 8007EA8C 10620009 */  beq        $v1, $v0, .L8007EAB4
/* 7F690 8007EA90 00808825 */   or        $s1, $a0, $zero
/* 7F694 8007EA94 3C013F80 */  lui        $at, 0x3f80
/* 7F698 8007EA98 4481F000 */  mtc1       $at, $f30
/* 7F69C 8007EA9C 00000000 */  nop
.L8007EAA0:
/* 7F6A0 8007EAA0 962E0002 */  lhu        $t6, 2($s1)
/* 7F6A4 8007EAA4 26310002 */  addiu      $s1, $s1, 2
/* 7F6A8 8007EAA8 146EFFFD */  bne        $v1, $t6, .L8007EAA0
/* 7F6AC 8007EAAC 461EB580 */   add.s     $f22, $f22, $f30
/* 7F6B0 8007EAB0 00808825 */  or         $s1, $a0, $zero
.L8007EAB4:
/* 7F6B4 8007EAB4 8FAF0094 */  lw         $t7, 0x94($sp)
/* 7F6B8 8007EAB8 3C013F80 */  lui        $at, 0x3f80
/* 7F6BC 8007EABC 4481F000 */  mtc1       $at, $f30
/* 7F6C0 8007EAC0 31F80100 */  andi       $t8, $t7, 0x100
/* 7F6C4 8007EAC4 13000004 */  beqz       $t8, .L8007EAD8
/* 7F6C8 8007EAC8 AFB80070 */   sw        $t8, 0x70($sp)
/* 7F6CC 8007EACC 24190010 */  addiu      $t9, $zero, 0x10
/* 7F6D0 8007EAD0 10000003 */  b          .L8007EAE0
/* 7F6D4 8007EAD4 A7B90086 */   sh        $t9, 0x86($sp)
.L8007EAD8:
/* 7F6D8 8007EAD8 24080008 */  addiu      $t0, $zero, 8
/* 7F6DC 8007EADC A7A80086 */  sh         $t0, 0x86($sp)
.L8007EAE0:
/* 7F6E0 8007EAE0 97B70086 */  lhu        $s7, 0x86($sp)
/* 7F6E4 8007EAE4 241E0010 */  addiu      $fp, $zero, 0x10
/* 7F6E8 8007EAE8 17D70008 */  bne        $fp, $s7, .L8007EB0C
/* 7F6EC 8007EAEC 3C0148A0 */   lui       $at, 0x48a0
/* 7F6F0 8007EAF0 8FA90098 */  lw         $t1, 0x98($sp)
/* 7F6F4 8007EAF4 44814000 */  mtc1       $at, $f8
/* 7F6F8 8007EAF8 44892000 */  mtc1       $t1, $f4
/* 7F6FC 8007EAFC 4608B282 */  mul.s      $f10, $f22, $f8
/* 7F700 8007EB00 468021A0 */  cvt.s.w    $f6, $f4
/* 7F704 8007EB04 460A3501 */  sub.s      $f20, $f6, $f10
/* 7F708 8007EB08 E7B4007C */  swc1       $f20, 0x7c($sp)
.L8007EB0C:
/* 7F70C 8007EB0C C7B4007C */  lwc1       $f20, 0x7c($sp)
/* 7F710 8007EB10 106200A8 */  beq        $v1, $v0, .L8007EDB4
/* 7F714 8007EB14 0000A025 */   or        $s4, $zero, $zero
/* 7F718 8007EB18 3C014780 */  lui        $at, 0x4780
/* 7F71C 8007EB1C 4481E000 */  mtc1       $at, $f28
/* 7F720 8007EB20 3C01800F */  lui        $at, %hi(D_800ECFE8)
/* 7F724 8007EB24 3C16800C */  lui        $s6, 0x800c
/* 7F728 8007EB28 C43BCFE8 */  lwc1       $f27, %lo(D_800ECFE8)($at)
/* 7F72C 8007EB2C C43ACFEC */  lwc1       $f26, -0x3014($at)
/* 7F730 8007EB30 96220000 */  lhu        $v0, ($s1)
/* 7F734 8007EB34 C7B800BC */  lwc1       $f24, 0xbc($sp)
/* 7F738 8007EB38 87B500BA */  lh         $s5, 0xba($sp)
/* 7F73C 8007EB3C 26D6CCD0 */  addiu      $s6, $s6, -0x3330
.L8007EB40:
/* 7F740 8007EB40 304A4000 */  andi       $t2, $v0, 0x4000
/* 7F744 8007EB44 1540008F */  bnez       $t2, .L8007ED84
/* 7F748 8007EB48 00000000 */   nop
/* 7F74C 8007EB4C 0C00A14A */  jal        func_80028528
/* 7F750 8007EB50 00000000 */   nop
/* 7F754 8007EB54 10400097 */  beqz       $v0, .L8007EDB4
/* 7F758 8007EB58 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7F75C 8007EB5C 00045880 */  sll        $t3, $a0, 2
/* 7F760 8007EB60 01645823 */  subu       $t3, $t3, $a0
/* 7F764 8007EB64 000B5880 */  sll        $t3, $t3, 2
/* 7F768 8007EB68 01645821 */  addu       $t3, $t3, $a0
/* 7F76C 8007EB6C 000B5880 */  sll        $t3, $t3, 2
/* 7F770 8007EB70 8FA20094 */  lw         $v0, 0x94($sp)
/* 7F774 8007EB74 01645823 */  subu       $t3, $t3, $a0
/* 7F778 8007EB78 3C0C800F */  lui        $t4, %hi(D_800EF510)
/* 7F77C 8007EB7C 258CF510 */  addiu      $t4, $t4, %lo(D_800EF510)
/* 7F780 8007EB80 000B58C0 */  sll        $t3, $t3, 3
/* 7F784 8007EB84 016C8021 */  addu       $s0, $t3, $t4
/* 7F788 8007EB88 240D0034 */  addiu      $t5, $zero, 0x34
/* 7F78C 8007EB8C 2401DEFF */  addiu      $at, $zero, -0x2101
/* 7F790 8007EB90 A60D00D2 */  sh         $t5, 0xd2($s0)
/* 7F794 8007EB94 00419024 */  and        $s2, $v0, $at
/* 7F798 8007EB98 0C0078B4 */  jal        func_8001E2D0
/* 7F79C 8007EB9C 30532000 */   andi      $s3, $v0, 0x2000
/* 7F7A0 8007EBA0 240E000B */  addiu      $t6, $zero, 0xb
/* 7F7A4 8007EBA4 A6120094 */  sh         $s2, 0x94($s0)
/* 7F7A8 8007EBA8 AE0E0080 */  sw         $t6, 0x80($s0)
/* 7F7AC 8007EBAC 962F0000 */  lhu        $t7, ($s1)
/* 7F7B0 8007EBB0 3C014000 */  lui        $at, 0x4000
/* 7F7B4 8007EBB4 000FC040 */  sll        $t8, $t7, 1
/* 7F7B8 8007EBB8 271902D2 */  addiu      $t9, $t8, 0x2d2
/* 7F7BC 8007EBBC 17D70013 */  bne        $fp, $s7, .L8007EC0C
/* 7F7C0 8007EBC0 A6190084 */   sh        $t9, 0x84($s0)
/* 7F7C4 8007EBC4 4448F800 */  cfc1       $t0, $31
/* 7F7C8 8007EBC8 02202025 */  or         $a0, $s1, $zero
/* 7F7CC 8007EBCC 35010003 */  ori        $at, $t0, 3
/* 7F7D0 8007EBD0 38210002 */  xori       $at, $at, 2
/* 7F7D4 8007EBD4 44C1F800 */  ctc1       $at, $31
/* 7F7D8 8007EBD8 00000000 */  nop
/* 7F7DC 8007EBDC 4600A424 */  cvt.w.s    $f16, $f20
/* 7F7E0 8007EBE0 44098000 */  mfc1       $t1, $f16
/* 7F7E4 8007EBE4 44C8F800 */  ctc1       $t0, $31
/* 7F7E8 8007EBE8 0C009EA2 */  jal        func_80027A88
/* 7F7EC 8007EBEC AE090088 */   sw        $t1, 0x88($s0)
/* 7F7F0 8007EBF0 00025400 */  sll        $t2, $v0, 0x10
/* 7F7F4 8007EBF4 448A9000 */  mtc1       $t2, $f18
/* 7F7F8 8007EBF8 8FAB009C */  lw         $t3, 0x9c($sp)
/* 7F7FC 8007EBFC 46809120 */  cvt.s.w    $f4, $f18
/* 7F800 8007EC00 AE0B008C */  sw         $t3, 0x8c($s0)
/* 7F804 8007EC04 10000040 */  b          .L8007ED08
/* 7F808 8007EC08 4604A500 */   add.s     $f20, $f20, $f4
.L8007EC0C:
/* 7F80C 8007EC0C 44814000 */  mtc1       $at, $f8
/* 7F810 8007EC10 44945000 */  mtc1       $s4, $f10
/* 7F814 8007EC14 4608B183 */  div.s      $f6, $f22, $f8
/* 7F818 8007EC18 06810005 */  bgez       $s4, .L8007EC30
/* 7F81C 8007EC1C 46805420 */   cvt.s.w   $f16, $f10
/* 7F820 8007EC20 3C014F80 */  lui        $at, 0x4f80
/* 7F824 8007EC24 44819000 */  mtc1       $at, $f18
/* 7F828 8007EC28 00000000 */  nop
/* 7F82C 8007EC2C 46128400 */  add.s      $f16, $f16, $f18
.L8007EC30:
/* 7F830 8007EC30 97AC0086 */  lhu        $t4, 0x86($sp)
/* 7F834 8007EC34 4610B101 */  sub.s      $f4, $f22, $f16
/* 7F838 8007EC38 448C5000 */  mtc1       $t4, $f10
/* 7F83C 8007EC3C 46043201 */  sub.s      $f8, $f6, $f4
/* 7F840 8007EC40 05810005 */  bgez       $t4, .L8007EC58
/* 7F844 8007EC44 468054A0 */   cvt.s.w   $f18, $f10
/* 7F848 8007EC48 3C014F80 */  lui        $at, 0x4f80
/* 7F84C 8007EC4C 44818000 */  mtc1       $at, $f16
/* 7F850 8007EC50 00000000 */  nop
/* 7F854 8007EC54 46109480 */  add.s      $f18, $f18, $f16
.L8007EC58:
/* 7F858 8007EC58 46124182 */  mul.s      $f6, $f8, $f18
/* 7F85C 8007EC5C 32AD03FF */  andi       $t5, $s5, 0x3ff
/* 7F860 8007EC60 000D7080 */  sll        $t6, $t5, 2
/* 7F864 8007EC64 02CE7821 */  addu       $t7, $s6, $t6
/* 7F868 8007EC68 46183502 */  mul.s      $f20, $f6, $f24
/* 7F86C 8007EC6C C5E40000 */  lwc1       $f4, ($t7)
/* 7F870 8007EC70 8FB80098 */  lw         $t8, 0x98($sp)
/* 7F874 8007EC74 26A9FF00 */  addiu      $t1, $s5, -0x100
/* 7F878 8007EC78 461C2282 */  mul.s      $f10, $f4, $f28
/* 7F87C 8007EC7C 44984000 */  mtc1       $t8, $f8
/* 7F880 8007EC80 312A03FF */  andi       $t2, $t1, 0x3ff
/* 7F884 8007EC84 000A5880 */  sll        $t3, $t2, 2
/* 7F888 8007EC88 46145402 */  mul.s      $f16, $f10, $f20
/* 7F88C 8007EC8C 02CB6021 */  addu       $t4, $s6, $t3
/* 7F890 8007EC90 C58A0000 */  lwc1       $f10, ($t4)
/* 7F894 8007EC94 8FAD009C */  lw         $t5, 0x9c($sp)
/* 7F898 8007EC98 468044A0 */  cvt.s.w    $f18, $f8
/* 7F89C 8007EC9C 46128180 */  add.s      $f6, $f16, $f18
/* 7F8A0 8007ECA0 448D9000 */  mtc1       $t5, $f18
/* 7F8A4 8007ECA4 4459F800 */  cfc1       $t9, $31
/* 7F8A8 8007ECA8 00000000 */  nop
/* 7F8AC 8007ECAC 37210003 */  ori        $at, $t9, 3
/* 7F8B0 8007ECB0 38210002 */  xori       $at, $at, 2
/* 7F8B4 8007ECB4 44C1F800 */  ctc1       $at, $31
/* 7F8B8 8007ECB8 00000000 */  nop
/* 7F8BC 8007ECBC 46003124 */  cvt.w.s    $f4, $f6
/* 7F8C0 8007ECC0 44D9F800 */  ctc1       $t9, $31
/* 7F8C4 8007ECC4 44082000 */  mfc1       $t0, $f4
/* 7F8C8 8007ECC8 461C5202 */  mul.s      $f8, $f10, $f28
/* 7F8CC 8007ECCC AE080088 */  sw         $t0, 0x88($s0)
/* 7F8D0 8007ECD0 46144402 */  mul.s      $f16, $f8, $f20
/* 7F8D4 8007ECD4 468091A0 */  cvt.s.w    $f6, $f18
/* 7F8D8 8007ECD8 46068100 */  add.s      $f4, $f16, $f6
/* 7F8DC 8007ECDC 444EF800 */  cfc1       $t6, $31
/* 7F8E0 8007ECE0 00000000 */  nop
/* 7F8E4 8007ECE4 35C10003 */  ori        $at, $t6, 3
/* 7F8E8 8007ECE8 38210002 */  xori       $at, $at, 2
/* 7F8EC 8007ECEC 44C1F800 */  ctc1       $at, $31
/* 7F8F0 8007ECF0 00000000 */  nop
/* 7F8F4 8007ECF4 460022A4 */  cvt.w.s    $f10, $f4
/* 7F8F8 8007ECF8 440F5000 */  mfc1       $t7, $f10
/* 7F8FC 8007ECFC 44CEF800 */  ctc1       $t6, $31
/* 7F900 8007ED00 AE0F008C */  sw         $t7, 0x8c($s0)
/* 7F904 8007ED04 00000000 */  nop
.L8007ED08:
/* 7F908 8007ED08 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 7F90C 8007ED0C 8FB90070 */  lw         $t9, 0x70($sp)
/* 7F910 8007ED10 AE180090 */  sw         $t8, 0x90($s0)
/* 7F914 8007ED14 13200012 */  beqz       $t9, .L8007ED60
/* 7F918 8007ED18 8FAC00A4 */   lw        $t4, 0xa4($sp)
/* 7F91C 8007ED1C 44954000 */  mtc1       $s5, $f8
/* 7F920 8007ED20 97A800B6 */  lhu        $t0, 0xb6($sp)
/* 7F924 8007ED24 468044A1 */  cvt.d.w    $f18, $f8
/* 7F928 8007ED28 93A900AB */  lbu        $t1, 0xab($sp)
/* 7F92C 8007ED2C 93AA00AF */  lbu        $t2, 0xaf($sp)
/* 7F930 8007ED30 463A9402 */  mul.d      $f16, $f18, $f26
/* 7F934 8007ED34 93AB00B3 */  lbu        $t3, 0xb3($sp)
/* 7F938 8007ED38 E61800B4 */  swc1       $f24, 0xb4($s0)
/* 7F93C 8007ED3C E61800B8 */  swc1       $f24, 0xb8($s0)
/* 7F940 8007ED40 A208009F */  sb         $t0, 0x9f($s0)
/* 7F944 8007ED44 462081A0 */  cvt.s.d    $f6, $f16
/* 7F948 8007ED48 A209009C */  sb         $t1, 0x9c($s0)
/* 7F94C 8007ED4C E60600C4 */  swc1       $f6, 0xc4($s0)
/* 7F950 8007ED50 A20A009D */  sb         $t2, 0x9d($s0)
/* 7F954 8007ED54 10000004 */  b          .L8007ED68
/* 7F958 8007ED58 A20B009E */   sb        $t3, 0x9e($s0)
/* 7F95C 8007ED5C 8FAC00A4 */  lw         $t4, 0xa4($sp)
.L8007ED60:
/* 7F960 8007ED60 00000000 */  nop
/* 7F964 8007ED64 AE0C018C */  sw         $t4, 0x18c($s0)
.L8007ED68:
/* 7F968 8007ED68 12600003 */  beqz       $s3, .L8007ED78
/* 7F96C 8007ED6C 00000000 */   nop
/* 7F970 8007ED70 10000009 */  b          .L8007ED98
/* 7F974 8007ED74 E61E0148 */   swc1      $f30, 0x148($s0)
.L8007ED78:
/* 7F978 8007ED78 44802000 */  mtc1       $zero, $f4
/* 7F97C 8007ED7C 10000006 */  b          .L8007ED98
/* 7F980 8007ED80 E6040148 */   swc1      $f4, 0x148($s0)
.L8007ED84:
/* 7F984 8007ED84 17D70004 */  bne        $fp, $s7, .L8007ED98
/* 7F988 8007ED88 3C014960 */   lui       $at, 0x4960
/* 7F98C 8007ED8C 44815000 */  mtc1       $at, $f10
/* 7F990 8007ED90 00000000 */  nop
/* 7F994 8007ED94 460AA500 */  add.s      $f20, $f20, $f10
.L8007ED98:
/* 7F998 8007ED98 96220002 */  lhu        $v0, 2($s1)
/* 7F99C 8007ED9C 26940001 */  addiu      $s4, $s4, 1
/* 7F9A0 8007EDA0 328DFFFF */  andi       $t5, $s4, 0xffff
/* 7F9A4 8007EDA4 34018FFF */  ori        $at, $zero, 0x8fff
/* 7F9A8 8007EDA8 01A0A025 */  or         $s4, $t5, $zero
/* 7F9AC 8007EDAC 1441FF64 */  bne        $v0, $at, .L8007EB40
/* 7F9B0 8007EDB0 26310002 */   addiu     $s1, $s1, 2
.L8007EDB4:
/* 7F9B4 8007EDB4 8FBF006C */  lw         $ra, 0x6c($sp)
/* 7F9B8 8007EDB8 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 7F9BC 8007EDBC C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 7F9C0 8007EDC0 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 7F9C4 8007EDC4 C7B60024 */  lwc1       $f22, 0x24($sp)
/* 7F9C8 8007EDC8 C7B90028 */  lwc1       $f25, 0x28($sp)
/* 7F9CC 8007EDCC C7B8002C */  lwc1       $f24, 0x2c($sp)
/* 7F9D0 8007EDD0 C7BB0030 */  lwc1       $f27, 0x30($sp)
/* 7F9D4 8007EDD4 C7BA0034 */  lwc1       $f26, 0x34($sp)
/* 7F9D8 8007EDD8 C7BD0038 */  lwc1       $f29, 0x38($sp)
/* 7F9DC 8007EDDC C7BC003C */  lwc1       $f28, 0x3c($sp)
/* 7F9E0 8007EDE0 C7BF0040 */  lwc1       $f31, 0x40($sp)
/* 7F9E4 8007EDE4 C7BE0044 */  lwc1       $f30, 0x44($sp)
/* 7F9E8 8007EDE8 8FB00048 */  lw         $s0, 0x48($sp)
/* 7F9EC 8007EDEC 8FB1004C */  lw         $s1, 0x4c($sp)
/* 7F9F0 8007EDF0 8FB20050 */  lw         $s2, 0x50($sp)
/* 7F9F4 8007EDF4 8FB30054 */  lw         $s3, 0x54($sp)
/* 7F9F8 8007EDF8 8FB40058 */  lw         $s4, 0x58($sp)
/* 7F9FC 8007EDFC 8FB5005C */  lw         $s5, 0x5c($sp)
/* 7FA00 8007EE00 8FB60060 */  lw         $s6, 0x60($sp)
/* 7FA04 8007EE04 8FB70064 */  lw         $s7, 0x64($sp)
/* 7FA08 8007EE08 8FBE0068 */  lw         $fp, 0x68($sp)
/* 7FA0C 8007EE0C 03E00008 */  jr         $ra
/* 7FA10 8007EE10 27BD0090 */   addiu     $sp, $sp, 0x90
