glabel func_8005BCF8
/* 5C8F8 8005BCF8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5C8FC 8005BCFC AFA40040 */  sw         $a0, 0x40($sp)
/* 5C900 8005BD00 97AE0042 */  lhu        $t6, 0x42($sp)
/* 5C904 8005BD04 3C18800F */  lui        $t8, 0x800f
/* 5C908 8005BD08 000E7880 */  sll        $t7, $t6, 2
/* 5C90C 8005BD0C 01EE7823 */  subu       $t7, $t7, $t6
/* 5C910 8005BD10 000F7880 */  sll        $t7, $t7, 2
/* 5C914 8005BD14 01EE7821 */  addu       $t7, $t7, $t6
/* 5C918 8005BD18 000F7880 */  sll        $t7, $t7, 2
/* 5C91C 8005BD1C 01EE7823 */  subu       $t7, $t7, $t6
/* 5C920 8005BD20 AFB10018 */  sw         $s1, 0x18($sp)
/* 5C924 8005BD24 000F78C0 */  sll        $t7, $t7, 3
/* 5C928 8005BD28 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 5C92C 8005BD2C 01F88821 */  addu       $s1, $t7, $t8
/* 5C930 8005BD30 86390088 */  lh         $t9, 0x88($s1)
/* 5C934 8005BD34 8628008C */  lh         $t0, 0x8c($s1)
/* 5C938 8005BD38 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5C93C 8005BD3C AFB00014 */  sw         $s0, 0x14($sp)
/* 5C940 8005BD40 24040003 */  addiu      $a0, $zero, 3
/* 5C944 8005BD44 AFB9002C */  sw         $t9, 0x2c($sp)
/* 5C948 8005BD48 0C0171C2 */  jal        func_8005C708
/* 5C94C 8005BD4C AFA80030 */   sw        $t0, 0x30($sp)
/* 5C950 8005BD50 86290090 */  lh         $t1, 0x90($s1)
/* 5C954 8005BD54 97A40042 */  lhu        $a0, 0x42($sp)
/* 5C958 8005BD58 00495021 */  addu       $t2, $v0, $t1
/* 5C95C 8005BD5C AFAA0034 */  sw         $t2, 0x34($sp)
/* 5C960 8005BD60 0C0164A8 */  jal        func_800592A0
/* 5C964 8005BD64 27A5002C */   addiu     $a1, $sp, 0x2c
/* 5C968 8005BD68 10400089 */  beqz       $v0, .L8005BF90
/* 5C96C 8005BD6C 3043FFFF */   andi      $v1, $v0, 0xffff
/* 5C970 8005BD70 00035880 */  sll        $t3, $v1, 2
/* 5C974 8005BD74 01635823 */  subu       $t3, $t3, $v1
/* 5C978 8005BD78 000B5880 */  sll        $t3, $t3, 2
/* 5C97C 8005BD7C 01635821 */  addu       $t3, $t3, $v1
/* 5C980 8005BD80 000B5880 */  sll        $t3, $t3, 2
/* 5C984 8005BD84 01635823 */  subu       $t3, $t3, $v1
/* 5C988 8005BD88 3C0C800F */  lui        $t4, %hi(gActors)
/* 5C98C 8005BD8C 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 5C990 8005BD90 000B58C0 */  sll        $t3, $t3, 3
/* 5C994 8005BD94 016C8021 */  addu       $s0, $t3, $t4
/* 5C998 8005BD98 960D0094 */  lhu        $t5, 0x94($s0)
/* 5C99C 8005BD9C 3C014100 */  lui        $at, 0x4100
/* 5C9A0 8005BDA0 44812000 */  mtc1       $at, $f4
/* 5C9A4 8005BDA4 240F00D0 */  addiu      $t7, $zero, 0xd0
/* 5C9A8 8005BDA8 241800FE */  addiu      $t8, $zero, 0xfe
/* 5C9AC 8005BDAC 24190004 */  addiu      $t9, $zero, 4
/* 5C9B0 8005BDB0 2408FFFC */  addiu      $t0, $zero, -4
/* 5C9B4 8005BDB4 35AE0009 */  ori        $t6, $t5, 9
/* 5C9B8 8005BDB8 A60E0094 */  sh         $t6, 0x94($s0)
/* 5C9BC 8005BDBC A60F0084 */  sh         $t7, 0x84($s0)
/* 5C9C0 8005BDC0 A218009F */  sb         $t8, 0x9f($s0)
/* 5C9C4 8005BDC4 AE190154 */  sw         $t9, 0x154($s0)
/* 5C9C8 8005BDC8 AE080164 */  sw         $t0, 0x164($s0)
/* 5C9CC 8005BDCC 0C0005E3 */  jal        func_8000178C
/* 5C9D0 8005BDD0 E6040148 */   swc1      $f4, 0x148($s0)
/* 5C9D4 8005BDD4 00024C80 */  sll        $t1, $v0, 0x12
/* 5C9D8 8005BDD8 AE090160 */  sw         $t1, 0x160($s0)
/* 5C9DC 8005BDDC 0C0171C2 */  jal        func_8005C708
/* 5C9E0 8005BDE0 00002025 */   or        $a0, $zero, $zero
/* 5C9E4 8005BDE4 44823000 */  mtc1       $v0, $f6
/* 5C9E8 8005BDE8 3C013F80 */  lui        $at, 0x3f80
/* 5C9EC 8005BDEC 46803220 */  cvt.s.w    $f8, $f6
/* 5C9F0 8005BDF0 44818800 */  mtc1       $at, $f17
/* 5C9F4 8005BDF4 44808000 */  mtc1       $zero, $f16
/* 5C9F8 8005BDF8 460042A1 */  cvt.d.s    $f10, $f8
/* 5C9FC 8005BDFC 46305482 */  mul.d      $f18, $f10, $f16
/* 5CA00 8005BE00 3C01800F */  lui        $at, %hi(D_800EBF58)
/* 5CA04 8005BE04 C425BF58 */  lwc1       $f5, %lo(D_800EBF58)($at)
/* 5CA08 8005BE08 C424BF5C */  lwc1       $f4, -0x40a4($at)
/* 5CA0C 8005BE0C 3C013FE0 */  lui        $at, 0x3fe0
/* 5CA10 8005BE10 46249182 */  mul.d      $f6, $f18, $f4
/* 5CA14 8005BE14 44814800 */  mtc1       $at, $f9
/* 5CA18 8005BE18 44804000 */  mtc1       $zero, $f8
/* 5CA1C 8005BE1C 00002025 */  or         $a0, $zero, $zero
/* 5CA20 8005BE20 46283280 */  add.d      $f10, $f6, $f8
/* 5CA24 8005BE24 46205420 */  cvt.s.d    $f16, $f10
/* 5CA28 8005BE28 0C0171C2 */  jal        func_8005C708
/* 5CA2C 8005BE2C E61000B4 */   swc1      $f16, 0xb4($s0)
/* 5CA30 8005BE30 44829000 */  mtc1       $v0, $f18
/* 5CA34 8005BE34 3C013F80 */  lui        $at, 0x3f80
/* 5CA38 8005BE38 46809120 */  cvt.s.w    $f4, $f18
/* 5CA3C 8005BE3C 44814800 */  mtc1       $at, $f9
/* 5CA40 8005BE40 44804000 */  mtc1       $zero, $f8
/* 5CA44 8005BE44 460021A1 */  cvt.d.s    $f6, $f4
/* 5CA48 8005BE48 46283282 */  mul.d      $f10, $f6, $f8
/* 5CA4C 8005BE4C 3C01800F */  lui        $at, %hi(D_800EBF60)
/* 5CA50 8005BE50 C431BF60 */  lwc1       $f17, %lo(D_800EBF60)($at)
/* 5CA54 8005BE54 C430BF64 */  lwc1       $f16, -0x409c($at)
/* 5CA58 8005BE58 3C01800F */  lui        $at, %hi(D_800EBF68)
/* 5CA5C 8005BE5C 46305482 */  mul.d      $f18, $f10, $f16
/* 5CA60 8005BE60 C425BF68 */  lwc1       $f5, %lo(D_800EBF68)($at)
/* 5CA64 8005BE64 C424BF6C */  lwc1       $f4, -0x4094($at)
/* 5CA68 8005BE68 00002025 */  or         $a0, $zero, $zero
/* 5CA6C 8005BE6C 46249180 */  add.d      $f6, $f18, $f4
/* 5CA70 8005BE70 46203220 */  cvt.s.d    $f8, $f6
/* 5CA74 8005BE74 0C0171C2 */  jal        func_8005C708
/* 5CA78 8005BE78 E60800B8 */   swc1      $f8, 0xb8($s0)
/* 5CA7C 8005BE7C 44825000 */  mtc1       $v0, $f10
/* 5CA80 8005BE80 3C013F80 */  lui        $at, 0x3f80
/* 5CA84 8005BE84 46805420 */  cvt.s.w    $f16, $f10
/* 5CA88 8005BE88 44812800 */  mtc1       $at, $f5
/* 5CA8C 8005BE8C 44802000 */  mtc1       $zero, $f4
/* 5CA90 8005BE90 460084A1 */  cvt.d.s    $f18, $f16
/* 5CA94 8005BE94 46249182 */  mul.d      $f6, $f18, $f4
/* 5CA98 8005BE98 C6080148 */  lwc1       $f8, 0x148($s0)
/* 5CA9C 8005BE9C 8E0A0080 */  lw         $t2, 0x80($s0)
/* 5CAA0 8005BEA0 2401FFDF */  addiu      $at, $zero, -0x21
/* 5CAA4 8005BEA4 354B8000 */  ori        $t3, $t2, 0x8000
/* 5CAA8 8005BEA8 46203020 */  cvt.s.d    $f0, $f6
/* 5CAAC 8005BEAC 97B80042 */  lhu        $t8, 0x42($sp)
/* 5CAB0 8005BEB0 46080283 */  div.s      $f10, $f0, $f8
/* 5CAB4 8005BEB4 01616824 */  and        $t5, $t3, $at
/* 5CAB8 8005BEB8 3C01C180 */  lui        $at, 0xc180
/* 5CABC 8005BEBC 8E0E0088 */  lw         $t6, 0x88($s0)
/* 5CAC0 8005BEC0 8E0F008C */  lw         $t7, 0x8c($s0)
/* 5CAC4 8005BEC4 44819000 */  mtc1       $at, $f18
/* 5CAC8 8005BEC8 44802000 */  mtc1       $zero, $f4
/* 5CACC 8005BECC 44983000 */  mtc1       $t8, $f6
/* 5CAD0 8005BED0 AE0B0080 */  sw         $t3, 0x80($s0)
/* 5CAD4 8005BED4 E6000110 */  swc1       $f0, 0x110($s0)
/* 5CAD8 8005BED8 AE0D0080 */  sw         $t5, 0x80($s0)
/* 5CADC 8005BEDC AE0E0184 */  sw         $t6, 0x184($s0)
/* 5CAE0 8005BEE0 46005407 */  neg.s      $f16, $f10
/* 5CAE4 8005BEE4 E6100118 */  swc1       $f16, 0x118($s0)
/* 5CAE8 8005BEE8 AE0F0188 */  sw         $t7, 0x188($s0)
/* 5CAEC 8005BEEC E6120140 */  swc1       $f18, 0x140($s0)
/* 5CAF0 8005BEF0 E6040144 */  swc1       $f4, 0x144($s0)
/* 5CAF4 8005BEF4 07010005 */  bgez       $t8, .L8005BF0C
/* 5CAF8 8005BEF8 46803220 */   cvt.s.w   $f8, $f6
/* 5CAFC 8005BEFC 3C014F80 */  lui        $at, 0x4f80
/* 5CB00 8005BF00 44815000 */  mtc1       $at, $f10
/* 5CB04 8005BF04 00000000 */  nop
/* 5CB08 8005BF08 460A4200 */  add.s      $f8, $f8, $f10
.L8005BF0C:
/* 5CB0C 8005BF0C E6080130 */  swc1       $f8, 0x130($s0)
/* 5CB10 8005BF10 86280088 */  lh         $t0, 0x88($s1)
/* 5CB14 8005BF14 86190088 */  lh         $t9, 0x88($s0)
/* 5CB18 8005BF18 860A008C */  lh         $t2, 0x8c($s0)
/* 5CB1C 8005BF1C 03284823 */  subu       $t1, $t9, $t0
/* 5CB20 8005BF20 44898000 */  mtc1       $t1, $f16
/* 5CB24 8005BF24 8E0D0090 */  lw         $t5, 0x90($s0)
/* 5CB28 8005BF28 468084A0 */  cvt.s.w    $f18, $f16
/* 5CB2C 8005BF2C 3C014F80 */  lui        $at, 0x4f80
/* 5CB30 8005BF30 E6120134 */  swc1       $f18, 0x134($s0)
/* 5CB34 8005BF34 862B008C */  lh         $t3, 0x8c($s1)
/* 5CB38 8005BF38 00000000 */  nop
/* 5CB3C 8005BF3C 014B6023 */  subu       $t4, $t2, $t3
/* 5CB40 8005BF40 448C2000 */  mtc1       $t4, $f4
/* 5CB44 8005BF44 00000000 */  nop
/* 5CB48 8005BF48 468021A0 */  cvt.s.w    $f6, $f4
/* 5CB4C 8005BF4C E6060138 */  swc1       $f6, 0x138($s0)
/* 5CB50 8005BF50 8E2E0090 */  lw         $t6, 0x90($s1)
/* 5CB54 8005BF54 00000000 */  nop
/* 5CB58 8005BF58 01AE7823 */  subu       $t7, $t5, $t6
/* 5CB5C 8005BF5C 448F5000 */  mtc1       $t7, $f10
/* 5CB60 8005BF60 00000000 */  nop
/* 5CB64 8005BF64 46805220 */  cvt.s.w    $f8, $f10
/* 5CB68 8005BF68 E608013C */  swc1       $f8, 0x13c($s0)
/* 5CB6C 8005BF6C 963800D2 */  lhu        $t8, 0xd2($s1)
/* 5CB70 8005BF70 00000000 */  nop
/* 5CB74 8005BF74 44988000 */  mtc1       $t8, $f16
/* 5CB78 8005BF78 07010004 */  bgez       $t8, .L8005BF8C
/* 5CB7C 8005BF7C 468084A0 */   cvt.s.w   $f18, $f16
/* 5CB80 8005BF80 44812000 */  mtc1       $at, $f4
/* 5CB84 8005BF84 00000000 */  nop
/* 5CB88 8005BF88 46049480 */  add.s      $f18, $f18, $f4
.L8005BF8C:
/* 5CB8C 8005BF8C E612014C */  swc1       $f18, 0x14c($s0)
.L8005BF90:
/* 5CB90 8005BF90 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5CB94 8005BF94 8FB00014 */  lw         $s0, 0x14($sp)
/* 5CB98 8005BF98 8FB10018 */  lw         $s1, 0x18($sp)
/* 5CB9C 8005BF9C 03E00008 */  jr         $ra
/* 5CBA0 8005BFA0 27BD0040 */   addiu     $sp, $sp, 0x40
