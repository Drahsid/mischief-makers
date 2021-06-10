glabel func_8008BC5C
/* 8C85C 8008BC5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C860 8008BC60 AFA40020 */  sw         $a0, 0x20($sp)
/* 8C864 8008BC64 97AE0022 */  lhu        $t6, 0x22($sp)
/* 8C868 8008BC68 24080198 */  addiu      $t0, $zero, 0x198
/* 8C86C 8008BC6C 01C80019 */  multu      $t6, $t0
/* 8C870 8008BC70 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 8C874 8008BC74 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 8C878 8008BC78 AFB00018 */  sw         $s0, 0x18($sp)
/* 8C87C 8008BC7C AFBF001C */  sw         $ra, 0x1c($sp)
/* 8C880 8008BC80 00007812 */  mflo       $t7
/* 8C884 8008BC84 00EF8021 */  addu       $s0, $a3, $t7
/* 8C888 8008BC88 960300D0 */  lhu        $v1, 0xd0($s0)
/* 8C88C 8008BC8C 00000000 */  nop
/* 8C890 8008BC90 28610010 */  slti       $at, $v1, 0x10
/* 8C894 8008BC94 1420002C */  bnez       $at, .L8008BD48
/* 8C898 8008BC98 00602825 */   or        $a1, $v1, $zero
/* 8C89C 8008BC9C 8E030164 */  lw         $v1, 0x164($s0)
/* 8C8A0 8008BCA0 9602016A */  lhu        $v0, 0x16a($s0)
/* 8C8A4 8008BCA4 2861003D */  slti       $at, $v1, 0x3d
/* 8C8A8 8008BCA8 1420000E */  bnez       $at, .L8008BCE4
/* 8C8AC 8008BCAC 2861001F */   slti      $at, $v1, 0x1f
/* 8C8B0 8008BCB0 00480019 */  multu      $v0, $t0
/* 8C8B4 8008BCB4 8E0400EC */  lw         $a0, 0xec($s0)
/* 8C8B8 8008BCB8 24060400 */  addiu      $a2, $zero, 0x400
/* 8C8BC 8008BCBC 0000C012 */  mflo       $t8
/* 8C8C0 8008BCC0 00F8C821 */  addu       $t9, $a3, $t8
/* 8C8C4 8008BCC4 8F250168 */  lw         $a1, 0x168($t9)
/* 8C8C8 8008BCC8 0C00A607 */  jal        func_8002981C
/* 8C8CC 8008BCCC 00000000 */   nop
/* 8C8D0 8008BCD0 960300D0 */  lhu        $v1, 0xd0($s0)
/* 8C8D4 8008BCD4 AE0200EC */  sw         $v0, 0xec($s0)
/* 8C8D8 8008BCD8 1000001B */  b          .L8008BD48
/* 8C8DC 8008BCDC 00602825 */   or        $a1, $v1, $zero
/* 8C8E0 8008BCE0 2861001F */  slti       $at, $v1, 0x1f
.L8008BCE4:
/* 8C8E4 8008BCE4 1420000D */  bnez       $at, .L8008BD1C
/* 8C8E8 8008BCE8 00000000 */   nop
/* 8C8EC 8008BCEC 00480019 */  multu      $v0, $t0
/* 8C8F0 8008BCF0 8E0400EC */  lw         $a0, 0xec($s0)
/* 8C8F4 8008BCF4 24060400 */  addiu      $a2, $zero, 0x400
/* 8C8F8 8008BCF8 00004812 */  mflo       $t1
/* 8C8FC 8008BCFC 00E95021 */  addu       $t2, $a3, $t1
/* 8C900 8008BD00 8D450164 */  lw         $a1, 0x164($t2)
/* 8C904 8008BD04 0C00A607 */  jal        func_8002981C
/* 8C908 8008BD08 00000000 */   nop
/* 8C90C 8008BD0C 960300D0 */  lhu        $v1, 0xd0($s0)
/* 8C910 8008BD10 AE0200EC */  sw         $v0, 0xec($s0)
/* 8C914 8008BD14 1000000C */  b          .L8008BD48
/* 8C918 8008BD18 00602825 */   or        $a1, $v1, $zero
.L8008BD1C:
/* 8C91C 8008BD1C 00480019 */  multu      $v0, $t0
/* 8C920 8008BD20 8E0400EC */  lw         $a0, 0xec($s0)
/* 8C924 8008BD24 24060400 */  addiu      $a2, $zero, 0x400
/* 8C928 8008BD28 00005812 */  mflo       $t3
/* 8C92C 8008BD2C 00EB6021 */  addu       $t4, $a3, $t3
/* 8C930 8008BD30 8D850160 */  lw         $a1, 0x160($t4)
/* 8C934 8008BD34 0C00A607 */  jal        func_8002981C
/* 8C938 8008BD38 00000000 */   nop
/* 8C93C 8008BD3C 960300D0 */  lhu        $v1, 0xd0($s0)
/* 8C940 8008BD40 AE0200EC */  sw         $v0, 0xec($s0)
/* 8C944 8008BD44 00602825 */  or         $a1, $v1, $zero
.L8008BD48:
/* 8C948 8008BD48 2CA10013 */  sltiu      $at, $a1, 0x13
/* 8C94C 8008BD4C 10200094 */  beqz       $at, .L8008BFA0
/* 8C950 8008BD50 00056880 */   sll       $t5, $a1, 2
/* 8C954 8008BD54 3C01800F */  lui        $at, %hi(D_800ED288)
/* 8C958 8008BD58 002D0821 */  addu       $at, $at, $t5
/* 8C95C 8008BD5C 8C2DD288 */  lw         $t5, %lo(D_800ED288)($at)
/* 8C960 8008BD60 00000000 */  nop
/* 8C964 8008BD64 01A00008 */  jr         $t5
/* 8C968 8008BD68 00000000 */   nop
/* 8C96C 8008BD6C 444FF800 */  cfc1       $t7, $31
/* 8C970 8008BD70 C6040110 */  lwc1       $f4, 0x110($s0)
/* 8C974 8008BD74 35E10003 */  ori        $at, $t7, 3
/* 8C978 8008BD78 38210002 */  xori       $at, $at, 2
/* 8C97C 8008BD7C 44C1F800 */  ctc1       $at, $31
/* 8C980 8008BD80 240E0002 */  addiu      $t6, $zero, 2
/* 8C984 8008BD84 460021A4 */  cvt.w.s    $f6, $f4
/* 8C988 8008BD88 24190001 */  addiu      $t9, $zero, 1
/* 8C98C 8008BD8C 44183000 */  mfc1       $t8, $f6
/* 8C990 8008BD90 44CFF800 */  ctc1       $t7, $31
/* 8C994 8008BD94 24690001 */  addiu      $t1, $v1, 1
/* 8C998 8008BD98 AE0E0080 */  sw         $t6, 0x80($s0)
/* 8C99C 8008BD9C AE190154 */  sw         $t9, 0x154($s0)
/* 8C9A0 8008BDA0 A60900D0 */  sh         $t1, 0xd0($s0)
/* 8C9A4 8008BDA4 AE180150 */  sw         $t8, 0x150($s0)
/* 8C9A8 8008BDA8 3C0A800C */  lui        $t2, %hi(D_800BE4E0)
/* 8C9AC 8008BDAC 954AE4E0 */  lhu        $t2, %lo(D_800BE4E0)($t2)
/* 8C9B0 8008BDB0 97A40022 */  lhu        $a0, 0x22($sp)
/* 8C9B4 8008BDB4 314B003F */  andi       $t3, $t2, 0x3f
/* 8C9B8 8008BDB8 15600003 */  bnez       $t3, .L8008BDC8
/* 8C9BC 8008BDBC 00000000 */   nop
/* 8C9C0 8008BDC0 0C022ED9 */  jal        func_8008BB64
/* 8C9C4 8008BDC4 00000000 */   nop
.L8008BDC8:
/* 8C9C8 8008BDC8 8E0C0154 */  lw         $t4, 0x154($s0)
/* 8C9CC 8008BDCC 00000000 */  nop
/* 8C9D0 8008BDD0 258DFFFF */  addiu      $t5, $t4, -1
/* 8C9D4 8008BDD4 1DA00027 */  bgtz       $t5, .L8008BE74
/* 8C9D8 8008BDD8 AE0D0154 */   sw        $t5, 0x154($s0)
/* 8C9DC 8008BDDC 0C0005E3 */  jal        func_8000178C
/* 8C9E0 8008BDE0 00000000 */   nop
/* 8C9E4 8008BDE4 44824000 */  mtc1       $v0, $f8
/* 8C9E8 8008BDE8 04410006 */  bgez       $v0, .L8008BE04
/* 8C9EC 8008BDEC 468042A1 */   cvt.d.w   $f10, $f8
/* 8C9F0 8008BDF0 3C0141F0 */  lui        $at, 0x41f0
/* 8C9F4 8008BDF4 44818800 */  mtc1       $at, $f17
/* 8C9F8 8008BDF8 44808000 */  mtc1       $zero, $f16
/* 8C9FC 8008BDFC 00000000 */  nop
/* 8CA00 8008BE00 46305280 */  add.d      $f10, $f10, $f16
.L8008BE04:
/* 8CA04 8008BE04 3C013FDE */  lui        $at, 0x3fde
/* 8CA08 8008BE08 44819800 */  mtc1       $at, $f19
/* 8CA0C 8008BE0C 44809000 */  mtc1       $zero, $f18
/* 8CA10 8008BE10 3C01403E */  lui        $at, 0x403e
/* 8CA14 8008BE14 46325102 */  mul.d      $f4, $f10, $f18
/* 8CA18 8008BE18 44813800 */  mtc1       $at, $f7
/* 8CA1C 8008BE1C 44803000 */  mtc1       $zero, $f6
/* 8CA20 8008BE20 00000000 */  nop
/* 8CA24 8008BE24 46262200 */  add.d      $f8, $f4, $f6
/* 8CA28 8008BE28 444FF800 */  cfc1       $t7, $31
/* 8CA2C 8008BE2C 00000000 */  nop
/* 8CA30 8008BE30 35E10003 */  ori        $at, $t7, 3
/* 8CA34 8008BE34 38210002 */  xori       $at, $at, 2
/* 8CA38 8008BE38 44C1F800 */  ctc1       $at, $31
/* 8CA3C 8008BE3C 00000000 */  nop
/* 8CA40 8008BE40 46204424 */  cvt.w.d    $f16, $f8
/* 8CA44 8008BE44 44CFF800 */  ctc1       $t7, $31
/* 8CA48 8008BE48 0C0005E3 */  jal        func_8000178C
/* 8CA4C 8008BE4C E6100154 */   swc1      $f16, 0x154($s0)
/* 8CA50 8008BE50 0002C080 */  sll        $t8, $v0, 2
/* 8CA54 8008BE54 0302C023 */  subu       $t8, $t8, $v0
/* 8CA58 8008BE58 0018C080 */  sll        $t8, $t8, 2
/* 8CA5C 8008BE5C 0302C023 */  subu       $t8, $t8, $v0
/* 8CA60 8008BE60 3C01FFFF */  lui        $at, 0xffff
/* 8CA64 8008BE64 34215000 */  ori        $at, $at, 0x5000
/* 8CA68 8008BE68 0018C140 */  sll        $t8, $t8, 5
/* 8CA6C 8008BE6C 0301C821 */  addu       $t9, $t8, $at
/* 8CA70 8008BE70 AE190160 */  sw         $t9, 0x160($s0)
.L8008BE74:
/* 8CA74 8008BE74 8E040164 */  lw         $a0, 0x164($s0)
/* 8CA78 8008BE78 8E050160 */  lw         $a1, 0x160($s0)
/* 8CA7C 8008BE7C 0C00A607 */  jal        func_8002981C
/* 8CA80 8008BE80 24060400 */   addiu     $a2, $zero, 0x400
/* 8CA84 8008BE84 8E040168 */  lw         $a0, 0x168($s0)
/* 8CA88 8008BE88 8E050160 */  lw         $a1, 0x160($s0)
/* 8CA8C 8008BE8C AE020164 */  sw         $v0, 0x164($s0)
/* 8CA90 8008BE90 0C00A607 */  jal        func_8002981C
/* 8CA94 8008BE94 24060400 */   addiu     $a2, $zero, 0x400
/* 8CA98 8008BE98 10000041 */  b          .L8008BFA0
/* 8CA9C 8008BE9C AE020168 */   sw        $v0, 0x168($s0)
/* 8CAA0 8008BEA0 8E0B0164 */  lw         $t3, 0x164($s0)
/* 8CAA4 8008BEA4 3409A000 */  ori        $t1, $zero, 0xa000
/* 8CAA8 8008BEA8 240A0014 */  addiu      $t2, $zero, 0x14
/* 8CAAC 8008BEAC 246D0001 */  addiu      $t5, $v1, 1
/* 8CAB0 8008BEB0 256C0001 */  addiu      $t4, $t3, 1
/* 8CAB4 8008BEB4 AE0900F0 */  sw         $t1, 0xf0($s0)
/* 8CAB8 8008BEB8 AE0A0180 */  sw         $t2, 0x180($s0)
/* 8CABC 8008BEBC AE0C0164 */  sw         $t4, 0x164($s0)
/* 8CAC0 8008BEC0 A60D00D0 */  sh         $t5, 0xd0($s0)
/* 8CAC4 8008BEC4 8E0E0150 */  lw         $t6, 0x150($s0)
/* 8CAC8 8008BEC8 3C01800F */  lui        $at, %hi(D_800ED2D8)
/* 8CACC 8008BECC 31CF0001 */  andi       $t7, $t6, 1
/* 8CAD0 8008BED0 15E0000D */  bnez       $t7, .L8008BF08
/* 8CAD4 8008BED4 240C6000 */   addiu     $t4, $zero, 0x6000
/* 8CAD8 8008BED8 C60A00B4 */  lwc1       $f10, 0xb4($s0)
/* 8CADC 8008BEDC C421D2D8 */  lwc1       $f1, %lo(D_800ED2D8)($at)
/* 8CAE0 8008BEE0 C420D2DC */  lwc1       $f0, -0x2d24($at)
/* 8CAE4 8008BEE4 C60800B8 */  lwc1       $f8, 0xb8($s0)
/* 8CAE8 8008BEE8 460054A1 */  cvt.d.s    $f18, $f10
/* 8CAEC 8008BEEC 46004421 */  cvt.d.s    $f16, $f8
/* 8CAF0 8008BEF0 46209100 */  add.d      $f4, $f18, $f0
/* 8CAF4 8008BEF4 46208280 */  add.d      $f10, $f16, $f0
/* 8CAF8 8008BEF8 462021A0 */  cvt.s.d    $f6, $f4
/* 8CAFC 8008BEFC 462054A0 */  cvt.s.d    $f18, $f10
/* 8CB00 8008BF00 E60600B4 */  swc1       $f6, 0xb4($s0)
/* 8CB04 8008BF04 E61200B8 */  swc1       $f18, 0xb8($s0)
.L8008BF08:
/* 8CB08 8008BF08 8E180180 */  lw         $t8, 0x180($s0)
/* 8CB0C 8008BF0C 00000000 */  nop
/* 8CB10 8008BF10 2719FFFF */  addiu      $t9, $t8, -1
/* 8CB14 8008BF14 07210005 */  bgez       $t9, .L8008BF2C
/* 8CB18 8008BF18 AE190180 */   sw        $t9, 0x180($s0)
/* 8CB1C 8008BF1C 960A00D0 */  lhu        $t2, 0xd0($s0)
/* 8CB20 8008BF20 AE0C00F0 */  sw         $t4, 0xf0($s0)
/* 8CB24 8008BF24 254B0001 */  addiu      $t3, $t2, 1
/* 8CB28 8008BF28 A60B00D0 */  sh         $t3, 0xd0($s0)
.L8008BF2C:
/* 8CB2C 8008BF2C 8E0D0164 */  lw         $t5, 0x164($s0)
/* 8CB30 8008BF30 00000000 */  nop
/* 8CB34 8008BF34 25AE0001 */  addiu      $t6, $t5, 1
/* 8CB38 8008BF38 10000019 */  b          .L8008BFA0
/* 8CB3C 8008BF3C AE0E0164 */   sw        $t6, 0x164($s0)
/* 8CB40 8008BF40 3C01800F */  lui        $at, %hi(D_800ED2E0)
/* 8CB44 8008BF44 C60400B4 */  lwc1       $f4, 0xb4($s0)
/* 8CB48 8008BF48 C421D2E0 */  lwc1       $f1, %lo(D_800ED2E0)($at)
/* 8CB4C 8008BF4C C420D2E4 */  lwc1       $f0, -0x2d1c($at)
/* 8CB50 8008BF50 C60A00B8 */  lwc1       $f10, 0xb8($s0)
/* 8CB54 8008BF54 920F009F */  lbu        $t7, 0x9f($s0)
/* 8CB58 8008BF58 460021A1 */  cvt.d.s    $f6, $f4
/* 8CB5C 8008BF5C 460054A1 */  cvt.d.s    $f18, $f10
/* 8CB60 8008BF60 46203200 */  add.d      $f8, $f6, $f0
/* 8CB64 8008BF64 25F8FFFD */  addiu      $t8, $t7, -3
/* 8CB68 8008BF68 46209100 */  add.d      $f4, $f18, $f0
/* 8CB6C 8008BF6C 331900FF */  andi       $t9, $t8, 0xff
/* 8CB70 8008BF70 46204420 */  cvt.s.d    $f16, $f8
/* 8CB74 8008BF74 2B210004 */  slti       $at, $t9, 4
/* 8CB78 8008BF78 462021A0 */  cvt.s.d    $f6, $f4
/* 8CB7C 8008BF7C E61000B4 */  swc1       $f16, 0xb4($s0)
/* 8CB80 8008BF80 E60600B8 */  swc1       $f6, 0xb8($s0)
/* 8CB84 8008BF84 10200002 */  beqz       $at, .L8008BF90
/* 8CB88 8008BF88 A218009F */   sb        $t8, 0x9f($s0)
/* 8CB8C 8008BF8C AE000080 */  sw         $zero, 0x80($s0)
.L8008BF90:
/* 8CB90 8008BF90 8E090164 */  lw         $t1, 0x164($s0)
/* 8CB94 8008BF94 00000000 */  nop
/* 8CB98 8008BF98 252A0001 */  addiu      $t2, $t1, 1
/* 8CB9C 8008BF9C AE0A0164 */  sw         $t2, 0x164($s0)
.L8008BFA0:
/* 8CBA0 8008BFA0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8CBA4 8008BFA4 8FB00018 */  lw         $s0, 0x18($sp)
/* 8CBA8 8008BFA8 03E00008 */  jr         $ra
/* 8CBAC 8008BFAC 27BD0020 */   addiu     $sp, $sp, 0x20
