glabel func_800ACD7C
/* AD97C 800ACD7C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AD980 800ACD80 AFBF0014 */  sw         $ra, 0x14($sp)
/* AD984 800ACD84 AFA40030 */  sw         $a0, 0x30($sp)
/* AD988 800ACD88 AFA50034 */  sw         $a1, 0x34($sp)
/* AD98C 800ACD8C AFA60038 */  sw         $a2, 0x38($sp)
/* AD990 800ACD90 AFA7003C */  sw         $a3, 0x3c($sp)
/* AD994 800ACD94 8FAE0030 */  lw         $t6, 0x30($sp)
/* AD998 800ACD98 93B8003F */  lbu        $t8, 0x3f($sp)
/* AD99C 800ACD9C 8DCF0060 */  lw         $t7, 0x60($t6)
/* AD9A0 800ACDA0 0018C900 */  sll        $t9, $t8, 4
/* AD9A4 800ACDA4 01F94021 */  addu       $t0, $t7, $t9
/* AD9A8 800ACDA8 8D090000 */  lw         $t1, ($t0)
/* AD9AC 800ACDAC AFA9002C */  sw         $t1, 0x2c($sp)
/* AD9B0 800ACDB0 240A0001 */  addiu      $t2, $zero, 1
/* AD9B4 800ACDB4 AFAA0028 */  sw         $t2, 0x28($sp)
/* AD9B8 800ACDB8 8FAB002C */  lw         $t3, 0x2c($sp)
/* AD9BC 800ACDBC 856C000E */  lh         $t4, 0xe($t3)
/* AD9C0 800ACDC0 AFAC0024 */  sw         $t4, 0x24($sp)
/* AD9C4 800ACDC4 8FAD002C */  lw         $t5, 0x2c($sp)
/* AD9C8 800ACDC8 11A00003 */  beqz       $t5, .L800ACDD8
/* AD9CC 800ACDCC 00000000 */   nop
/* AD9D0 800ACDD0 10000007 */  b          .L800ACDF0
/* AD9D4 800ACDD4 00000000 */   nop
.L800ACDD8:
/* AD9D8 800ACDD8 3C04800F */  lui        $a0, %hi(D_800EE118)
/* AD9DC 800ACDDC 3C05800F */  lui        $a1, %hi(D_800EE128)
/* AD9E0 800ACDE0 24A5E128 */  addiu      $a1, $a1, %lo(D_800EE128)
/* AD9E4 800ACDE4 2484E118 */  addiu      $a0, $a0, %lo(D_800EE118)
/* AD9E8 800ACDE8 0C026E74 */  jal        func_8009B9D0
/* AD9EC 800ACDEC 24060376 */   addiu     $a2, $zero, 0x376
.L800ACDF0:
/* AD9F0 800ACDF0 8FAE0024 */  lw         $t6, 0x24($sp)
/* AD9F4 800ACDF4 8FB80028 */  lw         $t8, 0x28($sp)
/* AD9F8 800ACDF8 01D8082A */  slt        $at, $t6, $t8
/* AD9FC 800ACDFC 14200046 */  bnez       $at, .L800ACF18
/* ADA00 800ACE00 00000000 */   nop
.L800ACE04:
/* ADA04 800ACE04 8FAF0028 */  lw         $t7, 0x28($sp)
/* ADA08 800ACE08 8FB90024 */  lw         $t9, 0x24($sp)
/* ADA0C 800ACE0C 01F94021 */  addu       $t0, $t7, $t9
/* ADA10 800ACE10 05010003 */  bgez       $t0, .L800ACE20
/* ADA14 800ACE14 00084843 */   sra       $t1, $t0, 1
/* ADA18 800ACE18 25010001 */  addiu      $at, $t0, 1
/* ADA1C 800ACE1C 00014843 */  sra        $t1, $at, 1
.L800ACE20:
/* ADA20 800ACE20 AFA90020 */  sw         $t1, 0x20($sp)
/* ADA24 800ACE24 8FAB0020 */  lw         $t3, 0x20($sp)
/* ADA28 800ACE28 8FAA002C */  lw         $t2, 0x2c($sp)
/* ADA2C 800ACE2C 000B6080 */  sll        $t4, $t3, 2
/* ADA30 800ACE30 014C6821 */  addu       $t5, $t2, $t4
/* ADA34 800ACE34 8DAE000C */  lw         $t6, 0xc($t5)
/* ADA38 800ACE38 8DD80004 */  lw         $t8, 4($t6)
/* ADA3C 800ACE3C AFB8001C */  sw         $t8, 0x1c($sp)
/* ADA40 800ACE40 8FB9001C */  lw         $t9, 0x1c($sp)
/* ADA44 800ACE44 93AF0037 */  lbu        $t7, 0x37($sp)
/* ADA48 800ACE48 93280002 */  lbu        $t0, 2($t9)
/* ADA4C 800ACE4C 01E8082A */  slt        $at, $t7, $t0
/* ADA50 800ACE50 14200016 */  bnez       $at, .L800ACEAC
/* ADA54 800ACE54 00000000 */   nop
/* ADA58 800ACE58 93290003 */  lbu        $t1, 3($t9)
/* ADA5C 800ACE5C 012F082A */  slt        $at, $t1, $t7
/* ADA60 800ACE60 14200012 */  bnez       $at, .L800ACEAC
/* ADA64 800ACE64 00000000 */   nop
/* ADA68 800ACE68 93AB003B */  lbu        $t3, 0x3b($sp)
/* ADA6C 800ACE6C 932A0000 */  lbu        $t2, ($t9)
/* ADA70 800ACE70 016A082A */  slt        $at, $t3, $t2
/* ADA74 800ACE74 1420000D */  bnez       $at, .L800ACEAC
/* ADA78 800ACE78 00000000 */   nop
/* ADA7C 800ACE7C 932C0001 */  lbu        $t4, 1($t9)
/* ADA80 800ACE80 018B082A */  slt        $at, $t4, $t3
/* ADA84 800ACE84 14200009 */  bnez       $at, .L800ACEAC
/* ADA88 800ACE88 00000000 */   nop
/* ADA8C 800ACE8C 8FAE0020 */  lw         $t6, 0x20($sp)
/* ADA90 800ACE90 8FAD002C */  lw         $t5, 0x2c($sp)
/* ADA94 800ACE94 000EC080 */  sll        $t8, $t6, 2
/* ADA98 800ACE98 01B84021 */  addu       $t0, $t5, $t8
/* ADA9C 800ACE9C 10000022 */  b          .L800ACF28
/* ADAA0 800ACEA0 8D02000C */   lw        $v0, 0xc($t0)
/* ADAA4 800ACEA4 10000017 */  b          .L800ACF04
/* ADAA8 800ACEA8 00000000 */   nop
.L800ACEAC:
/* ADAAC 800ACEAC 8FA9001C */  lw         $t1, 0x1c($sp)
/* ADAB0 800ACEB0 93AF0037 */  lbu        $t7, 0x37($sp)
/* ADAB4 800ACEB4 912A0002 */  lbu        $t2, 2($t1)
/* ADAB8 800ACEB8 01EA082A */  slt        $at, $t7, $t2
/* ADABC 800ACEBC 1420000A */  bnez       $at, .L800ACEE8
/* ADAC0 800ACEC0 00000000 */   nop
/* ADAC4 800ACEC4 93B9003B */  lbu        $t9, 0x3b($sp)
/* ADAC8 800ACEC8 912B0000 */  lbu        $t3, ($t1)
/* ADACC 800ACECC 032B082A */  slt        $at, $t9, $t3
/* ADAD0 800ACED0 10200009 */  beqz       $at, .L800ACEF8
/* ADAD4 800ACED4 00000000 */   nop
/* ADAD8 800ACED8 912C0003 */  lbu        $t4, 3($t1)
/* ADADC 800ACEDC 018F082A */  slt        $at, $t4, $t7
/* ADAE0 800ACEE0 14200005 */  bnez       $at, .L800ACEF8
/* ADAE4 800ACEE4 00000000 */   nop
.L800ACEE8:
/* ADAE8 800ACEE8 8FAE0020 */  lw         $t6, 0x20($sp)
/* ADAEC 800ACEEC 25CDFFFF */  addiu      $t5, $t6, -1
/* ADAF0 800ACEF0 10000004 */  b          .L800ACF04
/* ADAF4 800ACEF4 AFAD0024 */   sw        $t5, 0x24($sp)
.L800ACEF8:
/* ADAF8 800ACEF8 8FB80020 */  lw         $t8, 0x20($sp)
/* ADAFC 800ACEFC 27080001 */  addiu      $t0, $t8, 1
/* ADB00 800ACF00 AFA80028 */  sw         $t0, 0x28($sp)
.L800ACF04:
/* ADB04 800ACF04 8FAA0024 */  lw         $t2, 0x24($sp)
/* ADB08 800ACF08 8FB90028 */  lw         $t9, 0x28($sp)
/* ADB0C 800ACF0C 0159082A */  slt        $at, $t2, $t9
/* ADB10 800ACF10 1020FFBC */  beqz       $at, .L800ACE04
/* ADB14 800ACF14 00000000 */   nop
.L800ACF18:
/* ADB18 800ACF18 10000003 */  b          .L800ACF28
/* ADB1C 800ACF1C 00001025 */   or        $v0, $zero, $zero
/* ADB20 800ACF20 10000001 */  b          .L800ACF28
/* ADB24 800ACF24 00000000 */   nop
.L800ACF28:
/* ADB28 800ACF28 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADB2C 800ACF2C 27BD0030 */  addiu      $sp, $sp, 0x30
/* ADB30 800ACF30 03E00008 */  jr         $ra
/* ADB34 800ACF34 00000000 */   nop
