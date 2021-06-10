glabel func_800ABE34
/* ACA34 800ABE34 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* ACA38 800ABE38 AFBF002C */  sw         $ra, 0x2c($sp)
/* ACA3C 800ABE3C AFA400A8 */  sw         $a0, 0xa8($sp)
/* ACA40 800ABE40 AFA500AC */  sw         $a1, 0xac($sp)
/* ACA44 800ABE44 AFB10028 */  sw         $s1, 0x28($sp)
/* ACA48 800ABE48 AFB00024 */  sw         $s0, 0x24($sp)
/* ACA4C 800ABE4C 8FAE00AC */  lw         $t6, 0xac($sp)
/* ACA50 800ABE50 25CF0004 */  addiu      $t7, $t6, 4
/* ACA54 800ABE54 AFAF0090 */  sw         $t7, 0x90($sp)
/* ACA58 800ABE58 8FB800AC */  lw         $t8, 0xac($sp)
/* ACA5C 800ABE5C 24010001 */  addiu      $at, $zero, 1
/* ACA60 800ABE60 87190000 */  lh         $t9, ($t8)
/* ACA64 800ABE64 13210004 */  beq        $t9, $at, .L800ABE78
/* ACA68 800ABE68 00000000 */   nop
/* ACA6C 800ABE6C 24010002 */  addiu      $at, $zero, 2
/* ACA70 800ABE70 17210003 */  bne        $t9, $at, .L800ABE80
/* ACA74 800ABE74 00000000 */   nop
.L800ABE78:
/* ACA78 800ABE78 10000007 */  b          .L800ABE98
/* ACA7C 800ABE7C 00000000 */   nop
.L800ABE80:
/* ACA80 800ABE80 3C04800F */  lui        $a0, %hi(D_800EE090)
/* ACA84 800ABE84 3C05800F */  lui        $a1, %hi(D_800EE0D4)
/* ACA88 800ABE88 24A5E0D4 */  addiu      $a1, $a1, %lo(D_800EE0D4)
/* ACA8C 800ABE8C 2484E090 */  addiu      $a0, $a0, %lo(D_800EE090)
/* ACA90 800ABE90 0C026E74 */  jal        func_8009B9D0
/* ACA94 800ABE94 240601B4 */   addiu     $a2, $zero, 0x1b4
.L800ABE98:
/* ACA98 800ABE98 8FA80090 */  lw         $t0, 0x90($sp)
/* ACA9C 800ABE9C 91090004 */  lbu        $t1, 4($t0)
/* ACAA0 800ABEA0 312A00F0 */  andi       $t2, $t1, 0xf0
/* ACAA4 800ABEA4 AFAA009C */  sw         $t2, 0x9c($sp)
/* ACAA8 800ABEA8 8FAB0090 */  lw         $t3, 0x90($sp)
/* ACAAC 800ABEAC 916C0004 */  lbu        $t4, 4($t3)
/* ACAB0 800ABEB0 318D000F */  andi       $t5, $t4, 0xf
/* ACAB4 800ABEB4 A3AD009B */  sb         $t5, 0x9b($sp)
/* ACAB8 800ABEB8 8FAE0090 */  lw         $t6, 0x90($sp)
/* ACABC 800ABEBC 91CF0005 */  lbu        $t7, 5($t6)
/* ACAC0 800ABEC0 A3AF009A */  sb         $t7, 0x9a($sp)
/* ACAC4 800ABEC4 A3AF0098 */  sb         $t7, 0x98($sp)
/* ACAC8 800ABEC8 8FB80090 */  lw         $t8, 0x90($sp)
/* ACACC 800ABECC 93190006 */  lbu        $t9, 6($t8)
/* ACAD0 800ABED0 A3B90099 */  sb         $t9, 0x99($sp)
/* ACAD4 800ABED4 A3B90097 */  sb         $t9, 0x97($sp)
/* ACAD8 800ABED8 8FA8009C */  lw         $t0, 0x9c($sp)
/* ACADC 800ABEDC 2509FF80 */  addiu      $t1, $t0, -0x80
/* ACAE0 800ABEE0 2D210061 */  sltiu      $at, $t1, 0x61
/* ACAE4 800ABEE4 102002EC */  beqz       $at, .L800ACA98
/* ACAE8 800ABEE8 00000000 */   nop
/* ACAEC 800ABEEC 00094880 */  sll        $t1, $t1, 2
/* ACAF0 800ABEF0 3C01800F */  lui        $at, %hi(D_800EE1A0)
/* ACAF4 800ABEF4 00290821 */  addu       $at, $at, $t1
/* ACAF8 800ABEF8 8C29E1A0 */  lw         $t1, %lo(D_800EE1A0)($at)
/* ACAFC 800ABEFC 01200008 */  jr         $t1
/* ACB00 800ABF00 00000000 */   nop
/* ACB04 800ABF04 93AA0099 */  lbu        $t2, 0x99($sp)
/* ACB08 800ABF08 11400143 */  beqz       $t2, .L800AC418
/* ACB0C 800ABF0C 00000000 */   nop
/* ACB10 800ABF10 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* ACB14 800ABF14 24010001 */  addiu      $at, $zero, 1
/* ACB18 800ABF18 8D6C002C */  lw         $t4, 0x2c($t3)
/* ACB1C 800ABF1C 11810003 */  beq        $t4, $at, .L800ABF2C
/* ACB20 800ABF20 00000000 */   nop
/* ACB24 800ABF24 100002E2 */  b          .L800ACAB0
/* ACB28 800ABF28 00000000 */   nop
.L800ABF2C:
/* ACB2C 800ABF2C 8FA400A8 */  lw         $a0, 0xa8($sp)
/* ACB30 800ABF30 93A5009A */  lbu        $a1, 0x9a($sp)
/* ACB34 800ABF34 93A60099 */  lbu        $a2, 0x99($sp)
/* ACB38 800ABF38 0C02B35F */  jal        func_800ACD7C
/* ACB3C 800ABF3C 93A7009B */   lbu       $a3, 0x9b($sp)
/* ACB40 800ABF40 AFA20060 */  sw         $v0, 0x60($sp)
/* ACB44 800ABF44 8FAD0060 */  lw         $t5, 0x60($sp)
/* ACB48 800ABF48 15A0000B */  bnez       $t5, .L800ABF78
/* ACB4C 800ABF4C 00000000 */   nop
/* ACB50 800ABF50 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* ACB54 800ABF54 91CF0035 */  lbu        $t7, 0x35($t6)
/* ACB58 800ABF58 31F80001 */  andi       $t8, $t7, 1
/* ACB5C 800ABF5C 13000004 */  beqz       $t8, .L800ABF70
/* ACB60 800ABF60 00000000 */   nop
/* ACB64 800ABF64 24040064 */  addiu      $a0, $zero, 0x64
/* ACB68 800ABF68 0C0297B4 */  jal        func_800A5ED0
/* ACB6C 800ABF6C 00002825 */   or        $a1, $zero, $zero
.L800ABF70:
/* ACB70 800ABF70 100002D1 */  b          .L800ACAB8
/* ACB74 800ABF74 00000000 */   nop
.L800ABF78:
/* ACB78 800ABF78 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACB7C 800ABF7C 93A9009B */  lbu        $t1, 0x9b($sp)
/* ACB80 800ABF80 8F280060 */  lw         $t0, 0x60($t9)
/* ACB84 800ABF84 00095100 */  sll        $t2, $t1, 4
/* ACB88 800ABF88 010A5821 */  addu       $t3, $t0, $t2
/* ACB8C 800ABF8C 916C0008 */  lbu        $t4, 8($t3)
/* ACB90 800ABF90 A7AC0064 */  sh         $t4, 0x64($sp)
/* ACB94 800ABF94 A7A00066 */  sh         $zero, 0x66($sp)
/* ACB98 800ABF98 A3A00068 */  sb         $zero, 0x68($sp)
/* ACB9C 800ABF9C 8FA400A8 */  lw         $a0, 0xa8($sp)
/* ACBA0 800ABFA0 93A5009A */  lbu        $a1, 0x9a($sp)
/* ACBA4 800ABFA4 93A60099 */  lbu        $a2, 0x99($sp)
/* ACBA8 800ABFA8 0C02B2DB */  jal        func_800ACB6C
/* ACBAC 800ABFAC 93A7009B */   lbu       $a3, 0x9b($sp)
/* ACBB0 800ABFB0 AFA20074 */  sw         $v0, 0x74($sp)
/* ACBB4 800ABFB4 8FAD0074 */  lw         $t5, 0x74($sp)
/* ACBB8 800ABFB8 15A0000B */  bnez       $t5, .L800ABFE8
/* ACBBC 800ABFBC 00000000 */   nop
/* ACBC0 800ABFC0 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* ACBC4 800ABFC4 91CF0035 */  lbu        $t7, 0x35($t6)
/* ACBC8 800ABFC8 31F80004 */  andi       $t8, $t7, 4
/* ACBCC 800ABFCC 13000004 */  beqz       $t8, .L800ABFE0
/* ACBD0 800ABFD0 00000000 */   nop
/* ACBD4 800ABFD4 24040065 */  addiu      $a0, $zero, 0x65
/* ACBD8 800ABFD8 0C0297B4 */  jal        func_800A5ED0
/* ACBDC 800ABFDC 00002825 */   or        $a1, $zero, $zero
.L800ABFE0:
/* ACBE0 800ABFE0 100002B5 */  b          .L800ACAB8
/* ACBE4 800ABFE4 00000000 */   nop
.L800ABFE8:
/* ACBE8 800ABFE8 8FB90074 */  lw         $t9, 0x74($sp)
/* ACBEC 800ABFEC 27290004 */  addiu      $t1, $t9, 4
/* ACBF0 800ABFF0 AFA900A4 */  sw         $t1, 0xa4($sp)
/* ACBF4 800ABFF4 8FA800A8 */  lw         $t0, 0xa8($sp)
/* ACBF8 800ABFF8 8FA500A4 */  lw         $a1, 0xa4($sp)
/* ACBFC 800ABFFC 27A60064 */  addiu      $a2, $sp, 0x64
/* ACC00 800AC000 0C02B7DC */  jal        func_800ADF70
/* ACC04 800AC004 8D040014 */   lw        $a0, 0x14($t0)
/* ACC08 800AC008 8FAA0060 */  lw         $t2, 0x60($sp)
/* ACC0C 800AC00C 8FAB0074 */  lw         $t3, 0x74($sp)
/* ACC10 800AC010 AD6A0020 */  sw         $t2, 0x20($t3)
/* ACC14 800AC014 8FAC0074 */  lw         $t4, 0x74($sp)
/* ACC18 800AC018 A1800034 */  sb         $zero, 0x34($t4)
/* ACC1C 800AC01C 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* ACC20 800AC020 93AF009B */  lbu        $t7, 0x9b($sp)
/* ACC24 800AC024 8DAE0060 */  lw         $t6, 0x60($t5)
/* ACC28 800AC028 000FC100 */  sll        $t8, $t7, 4
/* ACC2C 800AC02C 01D8C821 */  addu       $t9, $t6, $t8
/* ACC30 800AC030 9329000B */  lbu        $t1, 0xb($t9)
/* ACC34 800AC034 29210040 */  slti       $at, $t1, 0x40
/* ACC38 800AC038 14200005 */  bnez       $at, .L800AC050
/* ACC3C 800AC03C 00000000 */   nop
/* ACC40 800AC040 8FAA0074 */  lw         $t2, 0x74($sp)
/* ACC44 800AC044 24080002 */  addiu      $t0, $zero, 2
/* ACC48 800AC048 10000003 */  b          .L800AC058
/* ACC4C 800AC04C A1480035 */   sb        $t0, 0x35($t2)
.L800AC050:
/* ACC50 800AC050 8FAB0074 */  lw         $t3, 0x74($sp)
/* ACC54 800AC054 A1600035 */  sb         $zero, 0x35($t3)
.L800AC058:
/* ACC58 800AC058 8FAD0060 */  lw         $t5, 0x60($sp)
/* ACC5C 800AC05C 93AC009A */  lbu        $t4, 0x9a($sp)
/* ACC60 800AC060 8DAF0004 */  lw         $t7, 4($t5)
/* ACC64 800AC064 91EE0004 */  lbu        $t6, 4($t7)
/* ACC68 800AC068 81E90005 */  lb         $t1, 5($t7)
/* ACC6C 800AC06C 018EC023 */  subu       $t8, $t4, $t6
/* ACC70 800AC070 0018C880 */  sll        $t9, $t8, 2
/* ACC74 800AC074 0338C823 */  subu       $t9, $t9, $t8
/* ACC78 800AC078 0019C8C0 */  sll        $t9, $t9, 3
/* ACC7C 800AC07C 0338C821 */  addu       $t9, $t9, $t8
/* ACC80 800AC080 0019C880 */  sll        $t9, $t9, 2
/* ACC84 800AC084 03294021 */  addu       $t0, $t9, $t1
/* ACC88 800AC088 A7A8005E */  sh         $t0, 0x5e($sp)
/* ACC8C 800AC08C 0C02B8B4 */  jal        func_800AE2D0
/* ACC90 800AC090 87A4005E */   lh        $a0, 0x5e($sp)
/* ACC94 800AC094 8FAA0074 */  lw         $t2, 0x74($sp)
/* ACC98 800AC098 E5400028 */  swc1       $f0, 0x28($t2)
/* ACC9C 800AC09C 8FAB0060 */  lw         $t3, 0x60($sp)
/* ACCA0 800AC0A0 8FAE0074 */  lw         $t6, 0x74($sp)
/* ACCA4 800AC0A4 8D6D0000 */  lw         $t5, ($t3)
/* ACCA8 800AC0A8 91AC000C */  lbu        $t4, 0xc($t5)
/* ACCAC 800AC0AC A1CC0030 */  sb         $t4, 0x30($t6)
/* ACCB0 800AC0B0 8FB90060 */  lw         $t9, 0x60($sp)
/* ACCB4 800AC0B4 8FB800A8 */  lw         $t8, 0xa8($sp)
/* ACCB8 800AC0B8 8FAB0074 */  lw         $t3, 0x74($sp)
/* ACCBC 800AC0BC 8F290000 */  lw         $t1, ($t9)
/* ACCC0 800AC0C0 8F0F001C */  lw         $t7, 0x1c($t8)
/* ACCC4 800AC0C4 8D280000 */  lw         $t0, ($t1)
/* ACCC8 800AC0C8 01E85021 */  addu       $t2, $t7, $t0
/* ACCCC 800AC0CC AD6A0024 */  sw         $t2, 0x24($t3)
/* ACCD0 800AC0D0 8FAD0074 */  lw         $t5, 0x74($sp)
/* ACCD4 800AC0D4 A1A00037 */  sb         $zero, 0x37($t5)
/* ACCD8 800AC0D8 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* ACCDC 800AC0DC 93B8009B */  lbu        $t8, 0x9b($sp)
/* ACCE0 800AC0E0 8D8E0060 */  lw         $t6, 0x60($t4)
/* ACCE4 800AC0E4 0018C900 */  sll        $t9, $t8, 4
/* ACCE8 800AC0E8 01D94821 */  addu       $t1, $t6, $t9
/* ACCEC 800AC0EC 8D2F0000 */  lw         $t7, ($t1)
/* ACCF0 800AC0F0 AFAF0048 */  sw         $t7, 0x48($sp)
/* ACCF4 800AC0F4 3C0142FE */  lui        $at, 0x42fe
/* ACCF8 800AC0F8 44812000 */  mtc1       $at, $f4
/* ACCFC 800AC0FC 00000000 */  nop
/* ACD00 800AC100 E7A40054 */  swc1       $f4, 0x54($sp)
/* ACD04 800AC104 8FA80048 */  lw         $t0, 0x48($sp)
/* ACD08 800AC108 910A0004 */  lbu        $t2, 4($t0)
/* ACD0C 800AC10C 11400025 */  beqz       $t2, .L800AC1A4
/* ACD10 800AC110 00000000 */   nop
/* ACD14 800AC114 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* ACD18 800AC118 8D6D0070 */  lw         $t5, 0x70($t3)
/* ACD1C 800AC11C 11A00021 */  beqz       $t5, .L800AC1A4
/* ACD20 800AC120 00000000 */   nop
/* ACD24 800AC124 8FAC0048 */  lw         $t4, 0x48($sp)
/* ACD28 800AC128 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACD2C 800AC12C 27A4004C */  addiu      $a0, $sp, 0x4c
/* ACD30 800AC130 91980006 */  lbu        $t8, 6($t4)
/* ACD34 800AC134 91860004 */  lbu        $a2, 4($t4)
/* ACD38 800AC138 91870005 */  lbu        $a3, 5($t4)
/* ACD3C 800AC13C AFB80010 */  sw         $t8, 0x10($sp)
/* ACD40 800AC140 918E0007 */  lbu        $t6, 7($t4)
/* ACD44 800AC144 27A50054 */  addiu      $a1, $sp, 0x54
/* ACD48 800AC148 AFAE0014 */  sw         $t6, 0x14($sp)
/* ACD4C 800AC14C 8F390070 */  lw         $t9, 0x70($t9)
/* ACD50 800AC150 0320F809 */  jalr       $t9
/* ACD54 800AC154 00000000 */   nop
/* ACD58 800AC158 AFA20078 */  sw         $v0, 0x78($sp)
/* ACD5C 800AC15C 8FA90078 */  lw         $t1, 0x78($sp)
/* ACD60 800AC160 11200010 */  beqz       $t1, .L800AC1A4
/* ACD64 800AC164 00000000 */   nop
/* ACD68 800AC168 240F0016 */  addiu      $t7, $zero, 0x16
/* ACD6C 800AC16C A7AF007C */  sh         $t7, 0x7c($sp)
/* ACD70 800AC170 8FA80074 */  lw         $t0, 0x74($sp)
/* ACD74 800AC174 AFA80080 */  sw         $t0, 0x80($sp)
/* ACD78 800AC178 8FAA004C */  lw         $t2, 0x4c($sp)
/* ACD7C 800AC17C AFAA0084 */  sw         $t2, 0x84($sp)
/* ACD80 800AC180 8FA400A8 */  lw         $a0, 0xa8($sp)
/* ACD84 800AC184 27A5007C */  addiu      $a1, $sp, 0x7c
/* ACD88 800AC188 8FA60078 */  lw         $a2, 0x78($sp)
/* ACD8C 800AC18C 0C02B620 */  jal        func_800AD880
/* ACD90 800AC190 24840048 */   addiu     $a0, $a0, 0x48
/* ACD94 800AC194 8FAB0074 */  lw         $t3, 0x74($sp)
/* ACD98 800AC198 916D0037 */  lbu        $t5, 0x37($t3)
/* ACD9C 800AC19C 35B80001 */  ori        $t8, $t5, 1
/* ACDA0 800AC1A0 A1780037 */  sb         $t8, 0x37($t3)
.L800AC1A4:
/* ACDA4 800AC1A4 444CF800 */  cfc1       $t4, $31
/* ACDA8 800AC1A8 240E0001 */  addiu      $t6, $zero, 1
/* ACDAC 800AC1AC 44CEF800 */  ctc1       $t6, $31
/* ACDB0 800AC1B0 C7A60054 */  lwc1       $f6, 0x54($sp)
/* ACDB4 800AC1B4 46003224 */  cvt.w.s    $f8, $f6
/* ACDB8 800AC1B8 444EF800 */  cfc1       $t6, $31
/* ACDBC 800AC1BC 00000000 */  nop
/* ACDC0 800AC1C0 31C10004 */  andi       $at, $t6, 4
/* ACDC4 800AC1C4 31CE0078 */  andi       $t6, $t6, 0x78
/* ACDC8 800AC1C8 11C00014 */  beqz       $t6, .L800AC21C
/* ACDCC 800AC1CC 00000000 */   nop
/* ACDD0 800AC1D0 3C014F00 */  lui        $at, 0x4f00
/* ACDD4 800AC1D4 44814000 */  mtc1       $at, $f8
/* ACDD8 800AC1D8 240E0001 */  addiu      $t6, $zero, 1
/* ACDDC 800AC1DC 46083201 */  sub.s      $f8, $f6, $f8
/* ACDE0 800AC1E0 44CEF800 */  ctc1       $t6, $31
/* ACDE4 800AC1E4 00000000 */  nop
/* ACDE8 800AC1E8 46004224 */  cvt.w.s    $f8, $f8
/* ACDEC 800AC1EC 444EF800 */  cfc1       $t6, $31
/* ACDF0 800AC1F0 00000000 */  nop
/* ACDF4 800AC1F4 31C10004 */  andi       $at, $t6, 4
/* ACDF8 800AC1F8 31CE0078 */  andi       $t6, $t6, 0x78
/* ACDFC 800AC1FC 15C00005 */  bnez       $t6, .L800AC214
/* ACE00 800AC200 00000000 */   nop
/* ACE04 800AC204 440E4000 */  mfc1       $t6, $f8
/* ACE08 800AC208 3C018000 */  lui        $at, 0x8000
/* ACE0C 800AC20C 10000007 */  b          .L800AC22C
/* ACE10 800AC210 01C17025 */   or        $t6, $t6, $at
.L800AC214:
/* ACE14 800AC214 10000005 */  b          .L800AC22C
/* ACE18 800AC218 240EFFFF */   addiu     $t6, $zero, -1
.L800AC21C:
/* ACE1C 800AC21C 440E4000 */  mfc1       $t6, $f8
/* ACE20 800AC220 00000000 */  nop
/* ACE24 800AC224 05C0FFFB */  bltz       $t6, .L800AC214
/* ACE28 800AC228 00000000 */   nop
.L800AC22C:
/* ACE2C 800AC22C 8FB90074 */  lw         $t9, 0x74($sp)
/* ACE30 800AC230 44CCF800 */  ctc1       $t4, $31
/* ACE34 800AC234 A32E0036 */  sb         $t6, 0x36($t9)
/* ACE38 800AC238 00000000 */  nop
/* ACE3C 800AC23C 3C013F80 */  lui        $at, 0x3f80
/* ACE40 800AC240 44815000 */  mtc1       $at, $f10
/* ACE44 800AC244 00000000 */  nop
/* ACE48 800AC248 E7AA0054 */  swc1       $f10, 0x54($sp)
/* ACE4C 800AC24C 8FA90048 */  lw         $t1, 0x48($sp)
/* ACE50 800AC250 912F0008 */  lbu        $t7, 8($t1)
/* ACE54 800AC254 11E00027 */  beqz       $t7, .L800AC2F4
/* ACE58 800AC258 00000000 */   nop
/* ACE5C 800AC25C 8FA800A8 */  lw         $t0, 0xa8($sp)
/* ACE60 800AC260 8D0A0070 */  lw         $t2, 0x70($t0)
/* ACE64 800AC264 11400023 */  beqz       $t2, .L800AC2F4
/* ACE68 800AC268 00000000 */   nop
/* ACE6C 800AC26C 8FAD0048 */  lw         $t5, 0x48($sp)
/* ACE70 800AC270 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* ACE74 800AC274 27A4004C */  addiu      $a0, $sp, 0x4c
/* ACE78 800AC278 91B8000A */  lbu        $t8, 0xa($t5)
/* ACE7C 800AC27C 91A60008 */  lbu        $a2, 8($t5)
/* ACE80 800AC280 91A70009 */  lbu        $a3, 9($t5)
/* ACE84 800AC284 AFB80010 */  sw         $t8, 0x10($sp)
/* ACE88 800AC288 91AB000B */  lbu        $t3, 0xb($t5)
/* ACE8C 800AC28C 27A50054 */  addiu      $a1, $sp, 0x54
/* ACE90 800AC290 AFAB0014 */  sw         $t3, 0x14($sp)
/* ACE94 800AC294 8D990070 */  lw         $t9, 0x70($t4)
/* ACE98 800AC298 0320F809 */  jalr       $t9
/* ACE9C 800AC29C 00000000 */   nop
/* ACEA0 800AC2A0 AFA20078 */  sw         $v0, 0x78($sp)
/* ACEA4 800AC2A4 8FAE0078 */  lw         $t6, 0x78($sp)
/* ACEA8 800AC2A8 11C00012 */  beqz       $t6, .L800AC2F4
/* ACEAC 800AC2AC 00000000 */   nop
/* ACEB0 800AC2B0 24090017 */  addiu      $t1, $zero, 0x17
/* ACEB4 800AC2B4 A7A9007C */  sh         $t1, 0x7c($sp)
/* ACEB8 800AC2B8 8FAF0074 */  lw         $t7, 0x74($sp)
/* ACEBC 800AC2BC AFAF0080 */  sw         $t7, 0x80($sp)
/* ACEC0 800AC2C0 8FA8004C */  lw         $t0, 0x4c($sp)
/* ACEC4 800AC2C4 AFA80084 */  sw         $t0, 0x84($sp)
/* ACEC8 800AC2C8 93AA009B */  lbu        $t2, 0x9b($sp)
/* ACECC 800AC2CC A3AA0088 */  sb         $t2, 0x88($sp)
/* ACED0 800AC2D0 8FA400A8 */  lw         $a0, 0xa8($sp)
/* ACED4 800AC2D4 27A5007C */  addiu      $a1, $sp, 0x7c
/* ACED8 800AC2D8 8FA60078 */  lw         $a2, 0x78($sp)
/* ACEDC 800AC2DC 0C02B620 */  jal        func_800AD880
/* ACEE0 800AC2E0 24840048 */   addiu     $a0, $a0, 0x48
/* ACEE4 800AC2E4 8FB80074 */  lw         $t8, 0x74($sp)
/* ACEE8 800AC2E8 930D0037 */  lbu        $t5, 0x37($t8)
/* ACEEC 800AC2EC 35AB0002 */  ori        $t3, $t5, 2
/* ACEF0 800AC2F0 A30B0037 */  sb         $t3, 0x37($t8)
.L800AC2F4:
/* ACEF4 800AC2F4 C7B00054 */  lwc1       $f16, 0x54($sp)
/* ACEF8 800AC2F8 8FAC0074 */  lw         $t4, 0x74($sp)
/* ACEFC 800AC2FC E590002C */  swc1       $f16, 0x2c($t4)
/* ACF00 800AC300 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACF04 800AC304 93A9009B */  lbu        $t1, 0x9b($sp)
/* ACF08 800AC308 8FAA0074 */  lw         $t2, 0x74($sp)
/* ACF0C 800AC30C 8F2E0060 */  lw         $t6, 0x60($t9)
/* ACF10 800AC310 00097900 */  sll        $t7, $t1, 4
/* ACF14 800AC314 C5440028 */  lwc1       $f4, 0x28($t2)
/* ACF18 800AC318 01CF4021 */  addu       $t0, $t6, $t7
/* ACF1C 800AC31C C512000C */  lwc1       $f18, 0xc($t0)
/* ACF20 800AC320 C548002C */  lwc1       $f8, 0x2c($t2)
/* ACF24 800AC324 46049182 */  mul.s      $f6, $f18, $f4
/* ACF28 800AC328 00000000 */  nop
/* ACF2C 800AC32C 46083282 */  mul.s      $f10, $f6, $f8
/* ACF30 800AC330 E7AA0058 */  swc1       $f10, 0x58($sp)
/* ACF34 800AC334 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* ACF38 800AC338 93B8009B */  lbu        $t8, 0x9b($sp)
/* ACF3C 800AC33C 8DAB0060 */  lw         $t3, 0x60($t5)
/* ACF40 800AC340 00186100 */  sll        $t4, $t8, 4
/* ACF44 800AC344 016CC821 */  addu       $t9, $t3, $t4
/* ACF48 800AC348 9329000A */  lbu        $t1, 0xa($t9)
/* ACF4C 800AC34C A3A90053 */  sb         $t1, 0x53($sp)
/* ACF50 800AC350 8FA40074 */  lw         $a0, 0x74($sp)
/* ACF54 800AC354 0C02B40A */  jal        func_800AD028
/* ACF58 800AC358 8FA500A8 */   lw        $a1, 0xa8($sp)
/* ACF5C 800AC35C A3A20073 */  sb         $v0, 0x73($sp)
/* ACF60 800AC360 8FA40074 */  lw         $a0, 0x74($sp)
/* ACF64 800AC364 0C02B3CE */  jal        func_800ACF38
/* ACF68 800AC368 8FA500A8 */   lw        $a1, 0xa8($sp)
/* ACF6C 800AC36C A7A2008E */  sh         $v0, 0x8e($sp)
/* ACF70 800AC370 8FAE0060 */  lw         $t6, 0x60($sp)
/* ACF74 800AC374 8DCF0000 */  lw         $t7, ($t6)
/* ACF78 800AC378 8DE80000 */  lw         $t0, ($t7)
/* ACF7C 800AC37C AFA80078 */  sw         $t0, 0x78($sp)
/* ACF80 800AC380 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* ACF84 800AC384 8FAD0060 */  lw         $t5, 0x60($sp)
/* ACF88 800AC388 87B8008E */  lh         $t8, 0x8e($sp)
/* ACF8C 800AC38C 8D440014 */  lw         $a0, 0x14($t2)
/* ACF90 800AC390 8DA60008 */  lw         $a2, 8($t5)
/* ACF94 800AC394 93AB0073 */  lbu        $t3, 0x73($sp)
/* ACF98 800AC398 93AC0053 */  lbu        $t4, 0x53($sp)
/* ACF9C 800AC39C 8FB90078 */  lw         $t9, 0x78($sp)
/* ACFA0 800AC3A0 8FA500A4 */  lw         $a1, 0xa4($sp)
/* ACFA4 800AC3A4 8FA70058 */  lw         $a3, 0x58($sp)
/* ACFA8 800AC3A8 AFB80010 */  sw         $t8, 0x10($sp)
/* ACFAC 800AC3AC AFAB0014 */  sw         $t3, 0x14($sp)
/* ACFB0 800AC3B0 AFAC0018 */  sw         $t4, 0x18($sp)
/* ACFB4 800AC3B4 0C02B8DC */  jal        func_800AE370
/* ACFB8 800AC3B8 AFB9001C */   sw        $t9, 0x1c($sp)
/* ACFBC 800AC3BC 24090006 */  addiu      $t1, $zero, 6
/* ACFC0 800AC3C0 A7A9007C */  sh         $t1, 0x7c($sp)
/* ACFC4 800AC3C4 8FAE00A4 */  lw         $t6, 0xa4($sp)
/* ACFC8 800AC3C8 AFAE0080 */  sw         $t6, 0x80($sp)
/* ACFCC 800AC3CC 8FAF0060 */  lw         $t7, 0x60($sp)
/* ACFD0 800AC3D0 8DE80000 */  lw         $t0, ($t7)
/* ACFD4 800AC3D4 910A000D */  lbu        $t2, 0xd($t0)
/* ACFD8 800AC3D8 A3AA0088 */  sb         $t2, 0x88($sp)
/* ACFDC 800AC3DC 8FAD0060 */  lw         $t5, 0x60($sp)
/* ACFE0 800AC3E0 8DB80000 */  lw         $t8, ($t5)
/* ACFE4 800AC3E4 8F0B0004 */  lw         $t3, 4($t8)
/* ACFE8 800AC3E8 AFAB0084 */  sw         $t3, 0x84($sp)
/* ACFEC 800AC3EC 8FAC0060 */  lw         $t4, 0x60($sp)
/* ACFF0 800AC3F0 8D990000 */  lw         $t9, ($t4)
/* ACFF4 800AC3F4 8F290000 */  lw         $t1, ($t9)
/* ACFF8 800AC3F8 AFA90078 */  sw         $t1, 0x78($sp)
/* ACFFC 800AC3FC 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD000 800AC400 27A5007C */  addiu      $a1, $sp, 0x7c
/* AD004 800AC404 8FA60078 */  lw         $a2, 0x78($sp)
/* AD008 800AC408 0C02B620 */  jal        func_800AD880
/* AD00C 800AC40C 24840048 */   addiu     $a0, $a0, 0x48
/* AD010 800AC410 100001A7 */  b          .L800ACAB0
/* AD014 800AC414 00000000 */   nop
.L800AC418:
/* AD018 800AC418 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD01C 800AC41C 93A5009A */  lbu        $a1, 0x9a($sp)
/* AD020 800AC420 0C02B33D */  jal        func_800ACCF4
/* AD024 800AC424 93A6009B */   lbu       $a2, 0x9b($sp)
/* AD028 800AC428 AFA20074 */  sw         $v0, 0x74($sp)
/* AD02C 800AC42C 8FAE0074 */  lw         $t6, 0x74($sp)
/* AD030 800AC430 15C0000B */  bnez       $t6, .L800AC460
/* AD034 800AC434 00000000 */   nop
/* AD038 800AC438 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* AD03C 800AC43C 91E80035 */  lbu        $t0, 0x35($t7)
/* AD040 800AC440 310A0002 */  andi       $t2, $t0, 2
/* AD044 800AC444 11400004 */  beqz       $t2, .L800AC458
/* AD048 800AC448 00000000 */   nop
/* AD04C 800AC44C 24040067 */  addiu      $a0, $zero, 0x67
/* AD050 800AC450 0C0297B4 */  jal        func_800A5ED0
/* AD054 800AC454 00002825 */   or        $a1, $zero, $zero
.L800AC458:
/* AD058 800AC458 10000197 */  b          .L800ACAB8
/* AD05C 800AC45C 00000000 */   nop
.L800AC460:
/* AD060 800AC460 8FAD0074 */  lw         $t5, 0x74($sp)
/* AD064 800AC464 24010002 */  addiu      $at, $zero, 2
/* AD068 800AC468 91B80035 */  lbu        $t8, 0x35($t5)
/* AD06C 800AC46C 17010005 */  bne        $t8, $at, .L800AC484
/* AD070 800AC470 00000000 */   nop
/* AD074 800AC474 8FAC0074 */  lw         $t4, 0x74($sp)
/* AD078 800AC478 240B0004 */  addiu      $t3, $zero, 4
/* AD07C 800AC47C 1000000B */  b          .L800AC4AC
/* AD080 800AC480 A18B0035 */   sb        $t3, 0x35($t4)
.L800AC484:
/* AD084 800AC484 8FA90074 */  lw         $t1, 0x74($sp)
/* AD088 800AC488 24190003 */  addiu      $t9, $zero, 3
/* AD08C 800AC48C A1390035 */  sb         $t9, 0x35($t1)
/* AD090 800AC490 8FAE0074 */  lw         $t6, 0x74($sp)
/* AD094 800AC494 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD098 800AC498 8DCF0020 */  lw         $t7, 0x20($t6)
/* AD09C 800AC49C 25C50004 */  addiu      $a1, $t6, 4
/* AD0A0 800AC4A0 8DE80000 */  lw         $t0, ($t7)
/* AD0A4 800AC4A4 0C02B429 */  jal        func_800AD0A4
/* AD0A8 800AC4A8 8D060008 */   lw        $a2, 8($t0)
.L800AC4AC:
/* AD0AC 800AC4AC 10000180 */  b          .L800ACAB0
/* AD0B0 800AC4B0 00000000 */   nop
/* AD0B4 800AC4B4 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD0B8 800AC4B8 93A5009A */  lbu        $a1, 0x9a($sp)
/* AD0BC 800AC4BC 0C02B33D */  jal        func_800ACCF4
/* AD0C0 800AC4C0 93A6009B */   lbu       $a2, 0x9b($sp)
/* AD0C4 800AC4C4 AFA20074 */  sw         $v0, 0x74($sp)
/* AD0C8 800AC4C8 8FAA0074 */  lw         $t2, 0x74($sp)
/* AD0CC 800AC4CC 15400006 */  bnez       $t2, .L800AC4E8
/* AD0D0 800AC4D0 00000000 */   nop
/* AD0D4 800AC4D4 24040068 */  addiu      $a0, $zero, 0x68
/* AD0D8 800AC4D8 0C0297B4 */  jal        func_800A5ED0
/* AD0DC 800AC4DC 00002825 */   or        $a1, $zero, $zero
/* AD0E0 800AC4E0 10000175 */  b          .L800ACAB8
/* AD0E4 800AC4E4 00000000 */   nop
.L800AC4E8:
/* AD0E8 800AC4E8 93AD0097 */  lbu        $t5, 0x97($sp)
/* AD0EC 800AC4EC 8FB80074 */  lw         $t8, 0x74($sp)
/* AD0F0 800AC4F0 A30D0033 */  sb         $t5, 0x33($t8)
/* AD0F4 800AC4F4 8FA40074 */  lw         $a0, 0x74($sp)
/* AD0F8 800AC4F8 0C02B3CE */  jal        func_800ACF38
/* AD0FC 800AC4FC 8FA500A8 */   lw        $a1, 0xa8($sp)
/* AD100 800AC500 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* AD104 800AC504 00028C00 */  sll        $s1, $v0, 0x10
/* AD108 800AC508 00115C03 */  sra        $t3, $s1, 0x10
/* AD10C 800AC50C 01608825 */  or         $s1, $t3, $zero
/* AD110 800AC510 8FA40074 */  lw         $a0, 0x74($sp)
/* AD114 800AC514 0C02B3F9 */  jal        func_800ACFE4
/* AD118 800AC518 8D85001C */   lw        $a1, 0x1c($t4)
/* AD11C 800AC51C 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AD120 800AC520 8FA50074 */  lw         $a1, 0x74($sp)
/* AD124 800AC524 00408025 */  or         $s0, $v0, $zero
/* AD128 800AC528 02003825 */  or         $a3, $s0, $zero
/* AD12C 800AC52C 02203025 */  or         $a2, $s1, $zero
/* AD130 800AC530 8F240014 */  lw         $a0, 0x14($t9)
/* AD134 800AC534 0C02B768 */  jal        func_800ADDA0
/* AD138 800AC538 24A50004 */   addiu     $a1, $a1, 4
/* AD13C 800AC53C 1000015C */  b          .L800ACAB0
/* AD140 800AC540 00000000 */   nop
/* AD144 800AC544 8FA900A8 */  lw         $t1, 0xa8($sp)
/* AD148 800AC548 8D2E0064 */  lw         $t6, 0x64($t1)
/* AD14C 800AC54C 11C0001F */  beqz       $t6, .L800AC5CC
/* AD150 800AC550 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L800AC554:
/* AD154 800AC554 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* AD158 800AC558 93AA009B */  lbu        $t2, 0x9b($sp)
/* AD15C 800AC55C 91E80031 */  lbu        $t0, 0x31($t7)
/* AD160 800AC560 150A0016 */  bne        $t0, $t2, .L800AC5BC
/* AD164 800AC564 00000000 */   nop
/* AD168 800AC568 93AD0098 */  lbu        $t5, 0x98($sp)
/* AD16C 800AC56C 8FB800A0 */  lw         $t8, 0xa0($sp)
/* AD170 800AC570 A30D0033 */  sb         $t5, 0x33($t8)
/* AD174 800AC574 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD178 800AC578 0C02B3CE */  jal        func_800ACF38
/* AD17C 800AC57C 8FA500A8 */   lw        $a1, 0xa8($sp)
/* AD180 800AC580 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* AD184 800AC584 00028C00 */  sll        $s1, $v0, 0x10
/* AD188 800AC588 00115C03 */  sra        $t3, $s1, 0x10
/* AD18C 800AC58C 01608825 */  or         $s1, $t3, $zero
/* AD190 800AC590 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD194 800AC594 0C02B3F9 */  jal        func_800ACFE4
/* AD198 800AC598 8D85001C */   lw        $a1, 0x1c($t4)
/* AD19C 800AC59C 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AD1A0 800AC5A0 8FA500A0 */  lw         $a1, 0xa0($sp)
/* AD1A4 800AC5A4 00408025 */  or         $s0, $v0, $zero
/* AD1A8 800AC5A8 02003825 */  or         $a3, $s0, $zero
/* AD1AC 800AC5AC 02203025 */  or         $a2, $s1, $zero
/* AD1B0 800AC5B0 8F240014 */  lw         $a0, 0x14($t9)
/* AD1B4 800AC5B4 0C02B768 */  jal        func_800ADDA0
/* AD1B8 800AC5B8 24A50004 */   addiu     $a1, $a1, 4
.L800AC5BC:
/* AD1BC 800AC5BC 8FA900A0 */  lw         $t1, 0xa0($sp)
/* AD1C0 800AC5C0 8D2E0000 */  lw         $t6, ($t1)
/* AD1C4 800AC5C4 15C0FFE3 */  bnez       $t6, .L800AC554
/* AD1C8 800AC5C8 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L800AC5CC:
/* AD1CC 800AC5CC 10000138 */  b          .L800ACAB0
/* AD1D0 800AC5D0 00000000 */   nop
/* AD1D4 800AC5D4 93B00098 */  lbu        $s0, 0x98($sp)
/* AD1D8 800AC5D8 2A010041 */  slti       $at, $s0, 0x41
/* AD1DC 800AC5DC 14200009 */  bnez       $at, .L800AC604
/* AD1E0 800AC5E0 00000000 */   nop
/* AD1E4 800AC5E4 2401005B */  addiu      $at, $zero, 0x5b
/* AD1E8 800AC5E8 120100A9 */  beq        $s0, $at, .L800AC890
/* AD1EC 800AC5EC 00000000 */   nop
/* AD1F0 800AC5F0 2401005D */  addiu      $at, $zero, 0x5d
/* AD1F4 800AC5F4 120100C2 */  beq        $s0, $at, .L800AC900
/* AD1F8 800AC5F8 00000000 */   nop
/* AD1FC 800AC5FC 100000C0 */  b          .L800AC900
/* AD200 800AC600 00000000 */   nop
.L800AC604:
/* AD204 800AC604 2A01001C */  slti       $at, $s0, 0x1c
/* AD208 800AC608 14200006 */  bnez       $at, .L800AC624
/* AD20C 800AC60C 00000000 */   nop
/* AD210 800AC610 24010040 */  addiu      $at, $zero, 0x40
/* AD214 800AC614 12010060 */  beq        $s0, $at, .L800AC798
/* AD218 800AC618 00000000 */   nop
/* AD21C 800AC61C 100000B8 */  b          .L800AC900
/* AD220 800AC620 00000000 */   nop
.L800AC624:
/* AD224 800AC624 260FFFF9 */  addiu      $t7, $s0, -7
/* AD228 800AC628 2DE10015 */  sltiu      $at, $t7, 0x15
/* AD22C 800AC62C 102000B4 */  beqz       $at, .L800AC900
/* AD230 800AC630 00000000 */   nop
/* AD234 800AC634 000F7880 */  sll        $t7, $t7, 2
/* AD238 800AC638 3C01800F */  lui        $at, %hi(D_800EE324)
/* AD23C 800AC63C 002F0821 */  addu       $at, $at, $t7
/* AD240 800AC640 8C2FE324 */  lw         $t7, %lo(D_800EE324)($at)
/* AD244 800AC644 01E00008 */  jr         $t7
/* AD248 800AC648 00000000 */   nop
/* AD24C 800AC64C 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* AD250 800AC650 93B8009B */  lbu        $t8, 0x9b($sp)
/* AD254 800AC654 93A80097 */  lbu        $t0, 0x97($sp)
/* AD258 800AC658 8D4D0060 */  lw         $t5, 0x60($t2)
/* AD25C 800AC65C 00185900 */  sll        $t3, $t8, 4
/* AD260 800AC660 01AB6021 */  addu       $t4, $t5, $t3
/* AD264 800AC664 A1880007 */  sb         $t0, 7($t4)
/* AD268 800AC668 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AD26C 800AC66C 8F290064 */  lw         $t1, 0x64($t9)
/* AD270 800AC670 11200014 */  beqz       $t1, .L800AC6C4
/* AD274 800AC674 AFA900A0 */   sw        $t1, 0xa0($sp)
.L800AC678:
/* AD278 800AC678 8FAE00A0 */  lw         $t6, 0xa0($sp)
/* AD27C 800AC67C 93AA009B */  lbu        $t2, 0x9b($sp)
/* AD280 800AC680 91CF0031 */  lbu        $t7, 0x31($t6)
/* AD284 800AC684 15EA000B */  bne        $t7, $t2, .L800AC6B4
/* AD288 800AC688 00000000 */   nop
/* AD28C 800AC68C 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD290 800AC690 0C02B40A */  jal        func_800AD028
/* AD294 800AC694 8FA500A8 */   lw        $a1, 0xa8($sp)
/* AD298 800AC698 A3A20073 */  sb         $v0, 0x73($sp)
/* AD29C 800AC69C 8FB800A8 */  lw         $t8, 0xa8($sp)
/* AD2A0 800AC6A0 8FA500A0 */  lw         $a1, 0xa0($sp)
/* AD2A4 800AC6A4 93A60073 */  lbu        $a2, 0x73($sp)
/* AD2A8 800AC6A8 8F040014 */  lw         $a0, 0x14($t8)
/* AD2AC 800AC6AC 0C02B930 */  jal        func_800AE4C0
/* AD2B0 800AC6B0 24A50004 */   addiu     $a1, $a1, 4
.L800AC6B4:
/* AD2B4 800AC6B4 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD2B8 800AC6B8 8DAB0000 */  lw         $t3, ($t5)
/* AD2BC 800AC6BC 1560FFEE */  bnez       $t3, .L800AC678
/* AD2C0 800AC6C0 AFAB00A0 */   sw        $t3, 0xa0($sp)
.L800AC6C4:
/* AD2C4 800AC6C4 10000090 */  b          .L800AC908
/* AD2C8 800AC6C8 00000000 */   nop
/* AD2CC 800AC6CC 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* AD2D0 800AC6D0 93A9009B */  lbu        $t1, 0x9b($sp)
/* AD2D4 800AC6D4 93A80097 */  lbu        $t0, 0x97($sp)
/* AD2D8 800AC6D8 8D990060 */  lw         $t9, 0x60($t4)
/* AD2DC 800AC6DC 00097100 */  sll        $t6, $t1, 4
/* AD2E0 800AC6E0 032E7821 */  addu       $t7, $t9, $t6
/* AD2E4 800AC6E4 A1E80009 */  sb         $t0, 9($t7)
/* AD2E8 800AC6E8 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* AD2EC 800AC6EC 8D580064 */  lw         $t8, 0x64($t2)
/* AD2F0 800AC6F0 1300001E */  beqz       $t8, .L800AC76C
/* AD2F4 800AC6F4 AFB800A0 */   sw        $t8, 0xa0($sp)
.L800AC6F8:
/* AD2F8 800AC6F8 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD2FC 800AC6FC 93AC009B */  lbu        $t4, 0x9b($sp)
/* AD300 800AC700 91AB0031 */  lbu        $t3, 0x31($t5)
/* AD304 800AC704 156C0015 */  bne        $t3, $t4, .L800AC75C
/* AD308 800AC708 00000000 */   nop
/* AD30C 800AC70C 91A90034 */  lbu        $t1, 0x34($t5)
/* AD310 800AC710 24010003 */  addiu      $at, $zero, 3
/* AD314 800AC714 11210011 */  beq        $t1, $at, .L800AC75C
/* AD318 800AC718 00000000 */   nop
/* AD31C 800AC71C 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD320 800AC720 0C02B3CE */  jal        func_800ACF38
/* AD324 800AC724 8FA500A8 */   lw        $a1, 0xa8($sp)
/* AD328 800AC728 A7A2008E */  sh         $v0, 0x8e($sp)
/* AD32C 800AC72C 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AD330 800AC730 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD334 800AC734 0C02B3F9 */  jal        func_800ACFE4
/* AD338 800AC738 8F25001C */   lw        $a1, 0x1c($t9)
/* AD33C 800AC73C 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* AD340 800AC740 8FA500A0 */  lw         $a1, 0xa0($sp)
/* AD344 800AC744 00408025 */  or         $s0, $v0, $zero
/* AD348 800AC748 02003825 */  or         $a3, $s0, $zero
/* AD34C 800AC74C 87A6008E */  lh         $a2, 0x8e($sp)
/* AD350 800AC750 8DC40014 */  lw         $a0, 0x14($t6)
/* AD354 800AC754 0C02B768 */  jal        func_800ADDA0
/* AD358 800AC758 24A50004 */   addiu     $a1, $a1, 4
.L800AC75C:
/* AD35C 800AC75C 8FA800A0 */  lw         $t0, 0xa0($sp)
/* AD360 800AC760 8D0F0000 */  lw         $t7, ($t0)
/* AD364 800AC764 15E0FFE4 */  bnez       $t7, .L800AC6F8
/* AD368 800AC768 AFAF00A0 */   sw        $t7, 0xa0($sp)
.L800AC76C:
/* AD36C 800AC76C 10000066 */  b          .L800AC908
/* AD370 800AC770 00000000 */   nop
/* AD374 800AC774 8FB800A8 */  lw         $t8, 0xa8($sp)
/* AD378 800AC778 93AC009B */  lbu        $t4, 0x9b($sp)
/* AD37C 800AC77C 93AA0097 */  lbu        $t2, 0x97($sp)
/* AD380 800AC780 8F0B0060 */  lw         $t3, 0x60($t8)
/* AD384 800AC784 000C6900 */  sll        $t5, $t4, 4
/* AD388 800AC788 016D4821 */  addu       $t1, $t3, $t5
/* AD38C 800AC78C A12A0008 */  sb         $t2, 8($t1)
/* AD390 800AC790 1000005D */  b          .L800AC908
/* AD394 800AC794 00000000 */   nop
.L800AC798:
/* AD398 800AC798 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* AD39C 800AC79C 93AF009B */  lbu        $t7, 0x9b($sp)
/* AD3A0 800AC7A0 93B90097 */  lbu        $t9, 0x97($sp)
/* AD3A4 800AC7A4 8DC80060 */  lw         $t0, 0x60($t6)
/* AD3A8 800AC7A8 000FC100 */  sll        $t8, $t7, 4
/* AD3AC 800AC7AC 01186021 */  addu       $t4, $t0, $t8
/* AD3B0 800AC7B0 A199000B */  sb         $t9, 0xb($t4)
/* AD3B4 800AC7B4 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* AD3B8 800AC7B8 8D6D0064 */  lw         $t5, 0x64($t3)
/* AD3BC 800AC7BC 11A00032 */  beqz       $t5, .L800AC888
/* AD3C0 800AC7C0 AFAD00A0 */   sw        $t5, 0xa0($sp)
.L800AC7C4:
/* AD3C4 800AC7C4 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* AD3C8 800AC7C8 93AE009B */  lbu        $t6, 0x9b($sp)
/* AD3CC 800AC7CC 91490031 */  lbu        $t1, 0x31($t2)
/* AD3D0 800AC7D0 152E0029 */  bne        $t1, $t6, .L800AC878
/* AD3D4 800AC7D4 00000000 */   nop
/* AD3D8 800AC7D8 914F0035 */  lbu        $t7, 0x35($t2)
/* AD3DC 800AC7DC 24010003 */  addiu      $at, $zero, 3
/* AD3E0 800AC7E0 11E10025 */  beq        $t7, $at, .L800AC878
/* AD3E4 800AC7E4 00000000 */   nop
/* AD3E8 800AC7E8 93A80097 */  lbu        $t0, 0x97($sp)
/* AD3EC 800AC7EC 29010040 */  slti       $at, $t0, 0x40
/* AD3F0 800AC7F0 1420000A */  bnez       $at, .L800AC81C
/* AD3F4 800AC7F4 00000000 */   nop
/* AD3F8 800AC7F8 8FB800A0 */  lw         $t8, 0xa0($sp)
/* AD3FC 800AC7FC 93190035 */  lbu        $t9, 0x35($t8)
/* AD400 800AC800 17200004 */  bnez       $t9, .L800AC814
/* AD404 800AC804 00000000 */   nop
/* AD408 800AC808 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* AD40C 800AC80C 240C0002 */  addiu      $t4, $zero, 2
/* AD410 800AC810 A16C0035 */  sb         $t4, 0x35($t3)
.L800AC814:
/* AD414 800AC814 10000018 */  b          .L800AC878
/* AD418 800AC818 00000000 */   nop
.L800AC81C:
/* AD41C 800AC81C 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD420 800AC820 24010002 */  addiu      $at, $zero, 2
/* AD424 800AC824 91A90035 */  lbu        $t1, 0x35($t5)
/* AD428 800AC828 15210004 */  bne        $t1, $at, .L800AC83C
/* AD42C 800AC82C 00000000 */   nop
/* AD430 800AC830 8FAE00A0 */  lw         $t6, 0xa0($sp)
/* AD434 800AC834 10000010 */  b          .L800AC878
/* AD438 800AC838 A1C00035 */   sb        $zero, 0x35($t6)
.L800AC83C:
/* AD43C 800AC83C 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* AD440 800AC840 24010004 */  addiu      $at, $zero, 4
/* AD444 800AC844 914F0035 */  lbu        $t7, 0x35($t2)
/* AD448 800AC848 15E1000B */  bne        $t7, $at, .L800AC878
/* AD44C 800AC84C 00000000 */   nop
/* AD450 800AC850 8FB800A0 */  lw         $t8, 0xa0($sp)
/* AD454 800AC854 24080003 */  addiu      $t0, $zero, 3
/* AD458 800AC858 A3080035 */  sb         $t0, 0x35($t8)
/* AD45C 800AC85C 8FB900A0 */  lw         $t9, 0xa0($sp)
/* AD460 800AC860 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD464 800AC864 8F2C0020 */  lw         $t4, 0x20($t9)
/* AD468 800AC868 27250004 */  addiu      $a1, $t9, 4
/* AD46C 800AC86C 8D8B0000 */  lw         $t3, ($t4)
/* AD470 800AC870 0C02B429 */  jal        func_800AD0A4
/* AD474 800AC874 8D660008 */   lw        $a2, 8($t3)
.L800AC878:
/* AD478 800AC878 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD47C 800AC87C 8DA90000 */  lw         $t1, ($t5)
/* AD480 800AC880 1520FFD0 */  bnez       $t1, .L800AC7C4
/* AD484 800AC884 AFA900A0 */   sw        $t1, 0xa0($sp)
.L800AC888:
/* AD488 800AC888 1000001F */  b          .L800AC908
/* AD48C 800AC88C 00000000 */   nop
.L800AC890:
/* AD490 800AC890 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* AD494 800AC894 93A8009B */  lbu        $t0, 0x9b($sp)
/* AD498 800AC898 93AE0097 */  lbu        $t6, 0x97($sp)
/* AD49C 800AC89C 8D4F0060 */  lw         $t7, 0x60($t2)
/* AD4A0 800AC8A0 0008C100 */  sll        $t8, $t0, 4
/* AD4A4 800AC8A4 01F8C821 */  addu       $t9, $t7, $t8
/* AD4A8 800AC8A8 A32E000A */  sb         $t6, 0xa($t9)
/* AD4AC 800AC8AC 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* AD4B0 800AC8B0 8D8B0064 */  lw         $t3, 0x64($t4)
/* AD4B4 800AC8B4 11600010 */  beqz       $t3, .L800AC8F8
/* AD4B8 800AC8B8 AFAB00A0 */   sw        $t3, 0xa0($sp)
.L800AC8BC:
/* AD4BC 800AC8BC 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD4C0 800AC8C0 93AA009B */  lbu        $t2, 0x9b($sp)
/* AD4C4 800AC8C4 91A90031 */  lbu        $t1, 0x31($t5)
/* AD4C8 800AC8C8 152A0007 */  bne        $t1, $t2, .L800AC8E8
/* AD4CC 800AC8CC 00000000 */   nop
/* AD4D0 800AC8D0 8FA800A8 */  lw         $t0, 0xa8($sp)
/* AD4D4 800AC8D4 8FA500A0 */  lw         $a1, 0xa0($sp)
/* AD4D8 800AC8D8 93A60097 */  lbu        $a2, 0x97($sp)
/* AD4DC 800AC8DC 8D040014 */  lw         $a0, 0x14($t0)
/* AD4E0 800AC8E0 0C02B968 */  jal        func_800AE5A0
/* AD4E4 800AC8E4 24A50004 */   addiu     $a1, $a1, 4
.L800AC8E8:
/* AD4E8 800AC8E8 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* AD4EC 800AC8EC 8DF80000 */  lw         $t8, ($t7)
/* AD4F0 800AC8F0 1700FFF2 */  bnez       $t8, .L800AC8BC
/* AD4F4 800AC8F4 AFB800A0 */   sw        $t8, 0xa0($sp)
.L800AC8F8:
/* AD4F8 800AC8F8 10000003 */  b          .L800AC908
/* AD4FC 800AC8FC 00000000 */   nop
.L800AC900:
/* AD500 800AC900 10000001 */  b          .L800AC908
/* AD504 800AC904 00000000 */   nop
.L800AC908:
/* AD508 800AC908 10000069 */  b          .L800ACAB0
/* AD50C 800AC90C 00000000 */   nop
/* AD510 800AC910 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* AD514 800AC914 8DD90020 */  lw         $t9, 0x20($t6)
/* AD518 800AC918 13200003 */  beqz       $t9, .L800AC928
/* AD51C 800AC91C 00000000 */   nop
/* AD520 800AC920 10000007 */  b          .L800AC940
/* AD524 800AC924 00000000 */   nop
.L800AC928:
/* AD528 800AC928 3C04800F */  lui        $a0, %hi(D_800EE0EC)
/* AD52C 800AC92C 3C05800F */  lui        $a1, %hi(D_800EE100)
/* AD530 800AC930 24A5E100 */  addiu      $a1, $a1, %lo(D_800EE100)
/* AD534 800AC934 2484E0EC */  addiu      $a0, $a0, %lo(D_800EE0EC)
/* AD538 800AC938 0C026E74 */  jal        func_8009B9D0
/* AD53C 800AC93C 240602CA */   addiu     $a2, $zero, 0x2ca
.L800AC940:
/* AD540 800AC940 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* AD544 800AC944 93AC009A */  lbu        $t4, 0x9a($sp)
/* AD548 800AC948 8D6D0020 */  lw         $t5, 0x20($t3)
/* AD54C 800AC94C 85A90000 */  lh         $t1, ($t5)
/* AD550 800AC950 0189082A */  slt        $at, $t4, $t1
/* AD554 800AC954 1020000E */  beqz       $at, .L800AC990
/* AD558 800AC958 00000000 */   nop
/* AD55C 800AC95C 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* AD560 800AC960 93AF009A */  lbu        $t7, 0x9a($sp)
/* AD564 800AC964 8D480020 */  lw         $t0, 0x20($t2)
/* AD568 800AC968 000FC080 */  sll        $t8, $t7, 2
/* AD56C 800AC96C 01187021 */  addu       $t6, $t0, $t8
/* AD570 800AC970 8DD9000C */  lw         $t9, 0xc($t6)
/* AD574 800AC974 AFB90044 */  sw         $t9, 0x44($sp)
/* AD578 800AC978 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD57C 800AC97C 8FA50044 */  lw         $a1, 0x44($sp)
/* AD580 800AC980 0C02B509 */  jal        func_800AD424
/* AD584 800AC984 93A6009B */   lbu       $a2, 0x9b($sp)
/* AD588 800AC988 10000008 */  b          .L800AC9AC
/* AD58C 800AC98C 00000000 */   nop
.L800AC990:
/* AD590 800AC990 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* AD594 800AC994 24040079 */  addiu      $a0, $zero, 0x79
/* AD598 800AC998 24050002 */  addiu      $a1, $zero, 2
/* AD59C 800AC99C 8D6D0020 */  lw         $t5, 0x20($t3)
/* AD5A0 800AC9A0 93A6009A */  lbu        $a2, 0x9a($sp)
/* AD5A4 800AC9A4 0C0297B4 */  jal        func_800A5ED0
/* AD5A8 800AC9A8 85A70000 */   lh        $a3, ($t5)
.L800AC9AC:
/* AD5AC 800AC9AC 10000040 */  b          .L800ACAB0
/* AD5B0 800AC9B0 00000000 */   nop
/* AD5B4 800AC9B4 93AC0097 */  lbu        $t4, 0x97($sp)
/* AD5B8 800AC9B8 93AA0098 */  lbu        $t2, 0x98($sp)
/* AD5BC 800AC9BC 000C49C0 */  sll        $t1, $t4, 7
/* AD5C0 800AC9C0 012A7821 */  addu       $t7, $t1, $t2
/* AD5C4 800AC9C4 25E8E000 */  addiu      $t0, $t7, -0x2000
/* AD5C8 800AC9C8 AFA80040 */  sw         $t0, 0x40($sp)
/* AD5CC 800AC9CC 8FB800A8 */  lw         $t8, 0xa8($sp)
/* AD5D0 800AC9D0 93B9009B */  lbu        $t9, 0x9b($sp)
/* AD5D4 800AC9D4 8FA90040 */  lw         $t1, 0x40($sp)
/* AD5D8 800AC9D8 8F0E0060 */  lw         $t6, 0x60($t8)
/* AD5DC 800AC9DC 00195900 */  sll        $t3, $t9, 4
/* AD5E0 800AC9E0 01CB6821 */  addu       $t5, $t6, $t3
/* AD5E4 800AC9E4 85AC0004 */  lh         $t4, 4($t5)
/* AD5E8 800AC9E8 01890019 */  multu      $t4, $t1
/* AD5EC 800AC9EC 00005012 */  mflo       $t2
/* AD5F0 800AC9F0 05410003 */  bgez       $t2, .L800ACA00
/* AD5F4 800AC9F4 000A7B43 */   sra       $t7, $t2, 0xd
/* AD5F8 800AC9F8 25411FFF */  addiu      $at, $t2, 0x1fff
/* AD5FC 800AC9FC 00017B43 */  sra        $t7, $at, 0xd
.L800ACA00:
/* AD600 800ACA00 AFAF0038 */  sw         $t7, 0x38($sp)
/* AD604 800ACA04 0C02B8B4 */  jal        func_800AE2D0
/* AD608 800ACA08 8FA40038 */   lw        $a0, 0x38($sp)
/* AD60C 800ACA0C E7A0003C */  swc1       $f0, 0x3c($sp)
/* AD610 800ACA10 8FA800A8 */  lw         $t0, 0xa8($sp)
/* AD614 800ACA14 93B9009B */  lbu        $t9, 0x9b($sp)
/* AD618 800ACA18 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* AD61C 800ACA1C 8D180060 */  lw         $t8, 0x60($t0)
/* AD620 800ACA20 00197100 */  sll        $t6, $t9, 4
/* AD624 800ACA24 030E5821 */  addu       $t3, $t8, $t6
/* AD628 800ACA28 E570000C */  swc1       $f16, 0xc($t3)
/* AD62C 800ACA2C 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* AD630 800ACA30 8DAC0064 */  lw         $t4, 0x64($t5)
/* AD634 800ACA34 11800016 */  beqz       $t4, .L800ACA90
/* AD638 800ACA38 AFAC00A0 */   sw        $t4, 0xa0($sp)
.L800ACA3C:
/* AD63C 800ACA3C 8FA900A0 */  lw         $t1, 0xa0($sp)
/* AD640 800ACA40 93AF009B */  lbu        $t7, 0x9b($sp)
/* AD644 800ACA44 912A0031 */  lbu        $t2, 0x31($t1)
/* AD648 800ACA48 154F000D */  bne        $t2, $t7, .L800ACA80
/* AD64C 800ACA4C 00000000 */   nop
/* AD650 800ACA50 8FB900A0 */  lw         $t9, 0xa0($sp)
/* AD654 800ACA54 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* AD658 800ACA58 8FA800A8 */  lw         $t0, 0xa8($sp)
/* AD65C 800ACA5C C7320028 */  lwc1       $f18, 0x28($t9)
/* AD660 800ACA60 C728002C */  lwc1       $f8, 0x2c($t9)
/* AD664 800ACA64 27250004 */  addiu      $a1, $t9, 4
/* AD668 800ACA68 46049182 */  mul.s      $f6, $f18, $f4
/* AD66C 800ACA6C 8D040014 */  lw         $a0, 0x14($t0)
/* AD670 800ACA70 46083282 */  mul.s      $f10, $f6, $f8
/* AD674 800ACA74 44065000 */  mfc1       $a2, $f10
/* AD678 800ACA78 0C02B7A4 */  jal        func_800ADE90
/* AD67C 800ACA7C 00000000 */   nop
.L800ACA80:
/* AD680 800ACA80 8FB800A0 */  lw         $t8, 0xa0($sp)
/* AD684 800ACA84 8F0E0000 */  lw         $t6, ($t8)
/* AD688 800ACA88 15C0FFEC */  bnez       $t6, .L800ACA3C
/* AD68C 800ACA8C AFAE00A0 */   sw        $t6, 0xa0($sp)
.L800ACA90:
/* AD690 800ACA90 10000007 */  b          .L800ACAB0
/* AD694 800ACA94 00000000 */   nop
.L800ACA98:
/* AD698 800ACA98 2404007A */  addiu      $a0, $zero, 0x7a
/* AD69C 800ACA9C 24050001 */  addiu      $a1, $zero, 1
/* AD6A0 800ACAA0 0C0297B4 */  jal        func_800A5ED0
/* AD6A4 800ACAA4 8FA6009C */   lw        $a2, 0x9c($sp)
/* AD6A8 800ACAA8 10000001 */  b          .L800ACAB0
/* AD6AC 800ACAAC 00000000 */   nop
.L800ACAB0:
/* AD6B0 800ACAB0 10000001 */  b          .L800ACAB8
/* AD6B4 800ACAB4 00000000 */   nop
.L800ACAB8:
/* AD6B8 800ACAB8 8FBF002C */  lw         $ra, 0x2c($sp)
/* AD6BC 800ACABC 8FB00024 */  lw         $s0, 0x24($sp)
/* AD6C0 800ACAC0 8FB10028 */  lw         $s1, 0x28($sp)
/* AD6C4 800ACAC4 03E00008 */  jr         $ra
/* AD6C8 800ACAC8 27BD00A8 */   addiu     $sp, $sp, 0xa8
