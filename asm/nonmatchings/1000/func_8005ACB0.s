glabel func_8005ACB0
/* 5B8B0 8005ACB0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5B8B4 8005ACB4 000EC080 */  sll        $t8, $t6, 2
/* 5B8B8 8005ACB8 030EC023 */  subu       $t8, $t8, $t6
/* 5B8BC 8005ACBC 0018C080 */  sll        $t8, $t8, 2
/* 5B8C0 8005ACC0 030EC021 */  addu       $t8, $t8, $t6
/* 5B8C4 8005ACC4 0018C080 */  sll        $t8, $t8, 2
/* 5B8C8 8005ACC8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 5B8CC 8005ACCC 030EC023 */  subu       $t8, $t8, $t6
/* 5B8D0 8005ACD0 3C19800F */  lui        $t9, %hi(gActors)
/* 5B8D4 8005ACD4 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 5B8D8 8005ACD8 0018C0C0 */  sll        $t8, $t8, 3
/* 5B8DC 8005ACDC AFA5006C */  sw         $a1, 0x6c($sp)
/* 5B8E0 8005ACE0 30AF00FF */  andi       $t7, $a1, 0xff
/* 5B8E4 8005ACE4 03194021 */  addu       $t0, $t8, $t9
/* 5B8E8 8005ACE8 850D0090 */  lh         $t5, 0x90($t0)
/* 5B8EC 8005ACEC 01E02825 */  or         $a1, $t7, $zero
/* 5B8F0 8005ACF0 AFA40068 */  sw         $a0, 0x68($sp)
/* 5B8F4 8005ACF4 01C02025 */  or         $a0, $t6, $zero
/* 5B8F8 8005ACF8 3C0F8022 */  lui        $t7, 0x8022
/* 5B8FC 8005ACFC AFB00020 */  sw         $s0, 0x20($sp)
/* 5B900 8005AD00 3C0B0100 */  lui        $t3, 0x100
/* 5B904 8005AD04 85090088 */  lh         $t1, 0x88($t0)
/* 5B908 8005AD08 850C008C */  lh         $t4, 0x8c($t0)
/* 5B90C 8005AD0C 35EFD528 */  ori        $t7, $t7, 0xd528
/* 5B910 8005AD10 25AEFFFF */  addiu      $t6, $t5, -1
/* 5B914 8005AD14 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5B918 8005AD18 AFA60070 */  sw         $a2, 0x70($sp)
/* 5B91C 8005AD1C AFAE005C */  sw         $t6, 0x5c($sp)
/* 5B920 8005AD20 AFAF0064 */  sw         $t7, 0x64($sp)
/* 5B924 8005AD24 00005025 */  or         $t2, $zero, $zero
/* 5B928 8005AD28 01608025 */  or         $s0, $t3, $zero
/* 5B92C 8005AD2C 10A00008 */  beqz       $a1, .L8005AD50
/* 5B930 8005AD30 00A03825 */   or        $a3, $a1, $zero
/* 5B934 8005AD34 24010008 */  addiu      $at, $zero, 8
/* 5B938 8005AD38 10E10008 */  beq        $a3, $at, .L8005AD5C
/* 5B93C 8005AD3C 2403FFF6 */   addiu     $v1, $zero, -0xa
/* 5B940 8005AD40 2403FFF4 */  addiu      $v1, $zero, -0xc
/* 5B944 8005AD44 240A0004 */  addiu      $t2, $zero, 4
/* 5B948 8005AD48 10000006 */  b          .L8005AD64
/* 5B94C 8005AD4C 01601025 */   or        $v0, $t3, $zero
.L8005AD50:
/* 5B950 8005AD50 2403FFF6 */  addiu      $v1, $zero, -0xa
/* 5B954 8005AD54 10000003 */  b          .L8005AD64
/* 5B958 8005AD58 3C020040 */   lui       $v0, 0x40
.L8005AD5C:
/* 5B95C 8005AD5C 3C10FF00 */  lui        $s0, 0xff00
/* 5B960 8005AD60 3C02FFC0 */  lui        $v0, 0xffc0
.L8005AD64:
/* 5B964 8005AD64 8D180080 */  lw         $t8, 0x80($t0)
/* 5B968 8005AD68 28E10009 */  slti       $at, $a3, 9
/* 5B96C 8005AD6C 33190020 */  andi       $t9, $t8, 0x20
/* 5B970 8005AD70 17200020 */  bnez       $t9, .L8005ADF4
/* 5B974 8005AD74 00000000 */   nop
/* 5B978 8005AD78 14200018 */  bnez       $at, .L8005ADDC
/* 5B97C 8005AD7C 00000000 */   nop
/* 5B980 8005AD80 44822000 */  mtc1       $v0, $f4
/* 5B984 8005AD84 3C01800F */  lui        $at, %hi(D_800EBEE0)
/* 5B988 8005AD88 468021A1 */  cvt.d.w    $f6, $f4
/* 5B98C 8005AD8C C429BEE0 */  lwc1       $f9, %lo(D_800EBEE0)($at)
/* 5B990 8005AD90 C428BEE4 */  lwc1       $f8, -0x411c($at)
/* 5B994 8005AD94 44908000 */  mtc1       $s0, $f16
/* 5B998 8005AD98 46283282 */  mul.d      $f10, $f6, $f8
/* 5B99C 8005AD9C 468084A1 */  cvt.d.w    $f18, $f16
/* 5B9A0 8005ADA0 01234821 */  addu       $t1, $t1, $v1
/* 5B9A4 8005ADA4 AFAC0058 */  sw         $t4, 0x58($sp)
/* 5B9A8 8005ADA8 AFA90054 */  sw         $t1, 0x54($sp)
/* 5B9AC 8005ADAC 462A9100 */  add.d      $f4, $f18, $f10
/* 5B9B0 8005ADB0 444DF800 */  cfc1       $t5, $31
/* 5B9B4 8005ADB4 00000000 */  nop
/* 5B9B8 8005ADB8 35A10003 */  ori        $at, $t5, 3
/* 5B9BC 8005ADBC 38210002 */  xori       $at, $at, 2
/* 5B9C0 8005ADC0 44C1F800 */  ctc1       $at, $31
/* 5B9C4 8005ADC4 00000000 */  nop
/* 5B9C8 8005ADC8 462021A4 */  cvt.w.d    $f6, $f4
/* 5B9CC 8005ADCC 44103000 */  mfc1       $s0, $f6
/* 5B9D0 8005ADD0 44CDF800 */  ctc1       $t5, $31
/* 5B9D4 8005ADD4 10000028 */  b          .L8005AE78
/* 5B9D8 8005ADD8 27A50054 */   addiu     $a1, $sp, 0x54
.L8005ADDC:
/* 5B9DC 8005ADDC 01234821 */  addu       $t1, $t1, $v1
/* 5B9E0 8005ADE0 018A6021 */  addu       $t4, $t4, $t2
/* 5B9E4 8005ADE4 AFAC0058 */  sw         $t4, 0x58($sp)
/* 5B9E8 8005ADE8 AFA90054 */  sw         $t1, 0x54($sp)
/* 5B9EC 8005ADEC 10000021 */  b          .L8005AE74
/* 5B9F0 8005ADF0 02028023 */   subu      $s0, $s0, $v0
.L8005ADF4:
/* 5B9F4 8005ADF4 10A0001A */  beqz       $a1, .L8005AE60
/* 5B9F8 8005ADF8 28E10008 */   slti      $at, $a3, 8
/* 5B9FC 8005ADFC 10200018 */  beqz       $at, .L8005AE60
/* 5BA00 8005AE00 00000000 */   nop
/* 5BA04 8005AE04 44824000 */  mtc1       $v0, $f8
/* 5BA08 8005AE08 3C01800F */  lui        $at, %hi(D_800EBEE8)
/* 5BA0C 8005AE0C 46804421 */  cvt.d.w    $f16, $f8
/* 5BA10 8005AE10 C433BEE8 */  lwc1       $f19, %lo(D_800EBEE8)($at)
/* 5BA14 8005AE14 C432BEEC */  lwc1       $f18, -0x4114($at)
/* 5BA18 8005AE18 44902000 */  mtc1       $s0, $f4
/* 5BA1C 8005AE1C 46328282 */  mul.d      $f10, $f16, $f18
/* 5BA20 8005AE20 468021A1 */  cvt.d.w    $f6, $f4
/* 5BA24 8005AE24 01234823 */  subu       $t1, $t1, $v1
/* 5BA28 8005AE28 AFAC0058 */  sw         $t4, 0x58($sp)
/* 5BA2C 8005AE2C AFA90054 */  sw         $t1, 0x54($sp)
/* 5BA30 8005AE30 462A3201 */  sub.d      $f8, $f6, $f10
/* 5BA34 8005AE34 444EF800 */  cfc1       $t6, $31
/* 5BA38 8005AE38 00000000 */  nop
/* 5BA3C 8005AE3C 35C10003 */  ori        $at, $t6, 3
/* 5BA40 8005AE40 38210002 */  xori       $at, $at, 2
/* 5BA44 8005AE44 44C1F800 */  ctc1       $at, $31
/* 5BA48 8005AE48 00000000 */  nop
/* 5BA4C 8005AE4C 46204424 */  cvt.w.d    $f16, $f8
/* 5BA50 8005AE50 44108000 */  mfc1       $s0, $f16
/* 5BA54 8005AE54 44CEF800 */  ctc1       $t6, $31
/* 5BA58 8005AE58 10000007 */  b          .L8005AE78
/* 5BA5C 8005AE5C 27A50054 */   addiu     $a1, $sp, 0x54
.L8005AE60:
/* 5BA60 8005AE60 01234823 */  subu       $t1, $t1, $v1
/* 5BA64 8005AE64 018A6021 */  addu       $t4, $t4, $t2
/* 5BA68 8005AE68 AFAC0058 */  sw         $t4, 0x58($sp)
/* 5BA6C 8005AE6C AFA90054 */  sw         $t1, 0x54($sp)
/* 5BA70 8005AE70 02028021 */  addu       $s0, $s0, $v0
.L8005AE74:
/* 5BA74 8005AE74 27A50054 */  addiu      $a1, $sp, 0x54
.L8005AE78:
/* 5BA78 8005AE78 02003025 */  or         $a2, $s0, $zero
/* 5BA7C 8005AE7C A7A4006A */  sh         $a0, 0x6a($sp)
/* 5BA80 8005AE80 0C0169B4 */  jal        func_8005A6D0
/* 5BA84 8005AE84 AFA80038 */   sw        $t0, 0x38($sp)
/* 5BA88 8005AE88 93A50073 */  lbu        $a1, 0x73($sp)
/* 5BA8C 8005AE8C 8FA80038 */  lw         $t0, 0x38($sp)
/* 5BA90 8005AE90 104000B0 */  beqz       $v0, .L8005B154
/* 5BA94 8005AE94 00027880 */   sll       $t7, $v0, 2
/* 5BA98 8005AE98 01E27823 */  subu       $t7, $t7, $v0
/* 5BA9C 8005AE9C 000F7880 */  sll        $t7, $t7, 2
/* 5BAA0 8005AEA0 97B9006A */  lhu        $t9, 0x6a($sp)
/* 5BAA4 8005AEA4 01E27821 */  addu       $t7, $t7, $v0
/* 5BAA8 8005AEA8 000F7880 */  sll        $t7, $t7, 2
/* 5BAAC 8005AEAC 44999000 */  mtc1       $t9, $f18
/* 5BAB0 8005AEB0 01E27823 */  subu       $t7, $t7, $v0
/* 5BAB4 8005AEB4 3C18800F */  lui        $t8, %hi(gActors)
/* 5BAB8 8005AEB8 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5BABC 8005AEBC 000F78C0 */  sll        $t7, $t7, 3
/* 5BAC0 8005AEC0 01F81821 */  addu       $v1, $t7, $t8
/* 5BAC4 8005AEC4 07210005 */  bgez       $t9, .L8005AEDC
/* 5BAC8 8005AEC8 46809020 */   cvt.s.w   $f0, $f18
/* 5BACC 8005AECC 3C014F80 */  lui        $at, 0x4f80
/* 5BAD0 8005AED0 44812000 */  mtc1       $at, $f4
/* 5BAD4 8005AED4 00000000 */  nop
/* 5BAD8 8005AED8 46040000 */  add.s      $f0, $f0, $f4
.L8005AEDC:
/* 5BADC 8005AEDC E4600130 */  swc1       $f0, 0x130($v1)
/* 5BAE0 8005AEE0 950D00D2 */  lhu        $t5, 0xd2($t0)
/* 5BAE4 8005AEE4 3C014F80 */  lui        $at, 0x4f80
/* 5BAE8 8005AEE8 448D3000 */  mtc1       $t5, $f6
/* 5BAEC 8005AEEC 05A10004 */  bgez       $t5, .L8005AF00
/* 5BAF0 8005AEF0 468032A0 */   cvt.s.w   $f10, $f6
/* 5BAF4 8005AEF4 44814000 */  mtc1       $at, $f8
/* 5BAF8 8005AEF8 00000000 */  nop
/* 5BAFC 8005AEFC 46085280 */  add.s      $f10, $f10, $f8
.L8005AF00:
/* 5BB00 8005AF00 E46A014C */  swc1       $f10, 0x14c($v1)
/* 5BB04 8005AF04 850F0088 */  lh         $t7, 0x88($t0)
/* 5BB08 8005AF08 846E0088 */  lh         $t6, 0x88($v1)
/* 5BB0C 8005AF0C 8479008C */  lh         $t9, 0x8c($v1)
/* 5BB10 8005AF10 01CFC023 */  subu       $t8, $t6, $t7
/* 5BB14 8005AF14 44988000 */  mtc1       $t8, $f16
/* 5BB18 8005AF18 8C640090 */  lw         $a0, 0x90($v1)
/* 5BB1C 8005AF1C 468084A0 */  cvt.s.w    $f18, $f16
/* 5BB20 8005AF20 3C013F00 */  lui        $at, 0x3f00
/* 5BB24 8005AF24 02003025 */  or         $a2, $s0, $zero
/* 5BB28 8005AF28 E4720134 */  swc1       $f18, 0x134($v1)
/* 5BB2C 8005AF2C 850D008C */  lh         $t5, 0x8c($t0)
/* 5BB30 8005AF30 3C073F33 */  lui        $a3, 0x3f33
/* 5BB34 8005AF34 032D7023 */  subu       $t6, $t9, $t5
/* 5BB38 8005AF38 448E2000 */  mtc1       $t6, $f4
/* 5BB3C 8005AF3C 30AD0001 */  andi       $t5, $a1, 1
/* 5BB40 8005AF40 468021A0 */  cvt.s.w    $f6, $f4
/* 5BB44 8005AF44 24990001 */  addiu      $t9, $a0, 1
/* 5BB48 8005AF48 240E01B2 */  addiu      $t6, $zero, 0x1b2
/* 5BB4C 8005AF4C E4660138 */  swc1       $f6, 0x138($v1)
/* 5BB50 8005AF50 8D0F0090 */  lw         $t7, 0x90($t0)
/* 5BB54 8005AF54 AC790090 */  sw         $t9, 0x90($v1)
/* 5BB58 8005AF58 008FC023 */  subu       $t8, $a0, $t7
/* 5BB5C 8005AF5C 44984000 */  mtc1       $t8, $f8
/* 5BB60 8005AF60 240F01B4 */  addiu      $t7, $zero, 0x1b4
/* 5BB64 8005AF64 468042A0 */  cvt.s.w    $f10, $f8
/* 5BB68 8005AF68 24180182 */  addiu      $t8, $zero, 0x182
/* 5BB6C 8005AF6C 11A00018 */  beqz       $t5, .L8005AFD0
/* 5BB70 8005AF70 E46A013C */   swc1      $f10, 0x13c($v1)
/* 5BB74 8005AF74 44818000 */  mtc1       $at, $f16
/* 5BB78 8005AF78 44859000 */  mtc1       $a1, $f18
/* 5BB7C 8005AF7C A46E0084 */  sh         $t6, 0x84($v1)
/* 5BB80 8005AF80 E47000B4 */  swc1       $f16, 0xb4($v1)
/* 5BB84 8005AF84 04A10006 */  bgez       $a1, .L8005AFA0
/* 5BB88 8005AF88 46809121 */   cvt.d.w   $f4, $f18
/* 5BB8C 8005AF8C 3C0141F0 */  lui        $at, 0x41f0
/* 5BB90 8005AF90 44813800 */  mtc1       $at, $f7
/* 5BB94 8005AF94 44803000 */  mtc1       $zero, $f6
/* 5BB98 8005AF98 00000000 */  nop
/* 5BB9C 8005AF9C 46262100 */  add.d      $f4, $f4, $f6
.L8005AFA0:
/* 5BBA0 8005AFA0 3C01800F */  lui        $at, %hi(D_800EBEF0)
/* 5BBA4 8005AFA4 C429BEF0 */  lwc1       $f9, %lo(D_800EBEF0)($at)
/* 5BBA8 8005AFA8 C428BEF4 */  lwc1       $f8, -0x410c($at)
/* 5BBAC 8005AFAC 3C013FF0 */  lui        $at, 0x3ff0
/* 5BBB0 8005AFB0 46282282 */  mul.d      $f10, $f4, $f8
/* 5BBB4 8005AFB4 44818800 */  mtc1       $at, $f17
/* 5BBB8 8005AFB8 44808000 */  mtc1       $zero, $f16
/* 5BBBC 8005AFBC 00000000 */  nop
/* 5BBC0 8005AFC0 462A8481 */  sub.d      $f18, $f16, $f10
/* 5BBC4 8005AFC4 462091A0 */  cvt.s.d    $f6, $f18
/* 5BBC8 8005AFC8 10000018 */  b          .L8005B02C
/* 5BBCC 8005AFCC E46600B8 */   swc1      $f6, 0xb8($v1)
.L8005AFD0:
/* 5BBD0 8005AFD0 44852000 */  mtc1       $a1, $f4
/* 5BBD4 8005AFD4 A46F0084 */  sh         $t7, 0x84($v1)
/* 5BBD8 8005AFD8 04A10006 */  bgez       $a1, .L8005AFF4
/* 5BBDC 8005AFDC 46802221 */   cvt.d.w   $f8, $f4
/* 5BBE0 8005AFE0 3C0141F0 */  lui        $at, 0x41f0
/* 5BBE4 8005AFE4 44818800 */  mtc1       $at, $f17
/* 5BBE8 8005AFE8 44808000 */  mtc1       $zero, $f16
/* 5BBEC 8005AFEC 00000000 */  nop
/* 5BBF0 8005AFF0 46304200 */  add.d      $f8, $f8, $f16
.L8005AFF4:
/* 5BBF4 8005AFF4 3C01800F */  lui        $at, %hi(D_800EBEF8)
/* 5BBF8 8005AFF8 C42BBEF8 */  lwc1       $f11, %lo(D_800EBEF8)($at)
/* 5BBFC 8005AFFC C42ABEFC */  lwc1       $f10, -0x4104($at)
/* 5BC00 8005B000 3C013FF0 */  lui        $at, 0x3ff0
/* 5BC04 8005B004 462A4482 */  mul.d      $f18, $f8, $f10
/* 5BC08 8005B008 44813800 */  mtc1       $at, $f7
/* 5BC0C 8005B00C 44803000 */  mtc1       $zero, $f6
/* 5BC10 8005B010 3C01800F */  lui        $at, %hi(D_800EBF00)
/* 5BC14 8005B014 46323101 */  sub.d      $f4, $f6, $f18
/* 5BC18 8005B018 46202420 */  cvt.s.d    $f16, $f4
/* 5BC1C 8005B01C E47000B4 */  swc1       $f16, 0xb4($v1)
/* 5BC20 8005B020 C428BF00 */  lwc1       $f8, %lo(D_800EBF00)($at)
/* 5BC24 8005B024 00000000 */  nop
/* 5BC28 8005B028 E46800B8 */  swc1       $f8, 0xb8($v1)
.L8005B02C:
/* 5BC2C 8005B02C 14A00049 */  bnez       $a1, .L8005B154
/* 5BC30 8005B030 3C198022 */   lui       $t9, 0x8022
/* 5BC34 8005B034 3739D568 */  ori        $t9, $t9, 0xd568
/* 5BC38 8005B038 97A4006A */  lhu        $a0, 0x6a($sp)
/* 5BC3C 8005B03C 240D0008 */  addiu      $t5, $zero, 8
/* 5BC40 8005B040 AFB80060 */  sw         $t8, 0x60($sp)
/* 5BC44 8005B044 AFB90064 */  sw         $t9, 0x64($sp)
/* 5BC48 8005B048 AFAD0010 */  sw         $t5, 0x10($sp)
/* 5BC4C 8005B04C 27A50054 */  addiu      $a1, $sp, 0x54
/* 5BC50 8005B050 34E73333 */  ori        $a3, $a3, 0x3333
/* 5BC54 8005B054 AFA80038 */  sw         $t0, 0x38($sp)
/* 5BC58 8005B058 0C01681A */  jal        func_8005A068
/* 5BC5C 8005B05C E7A00034 */   swc1      $f0, 0x34($sp)
/* 5BC60 8005B060 8FA80038 */  lw         $t0, 0x38($sp)
/* 5BC64 8005B064 C7A00034 */  lwc1       $f0, 0x34($sp)
/* 5BC68 8005B068 1040003A */  beqz       $v0, .L8005B154
/* 5BC6C 8005B06C 00027080 */   sll       $t6, $v0, 2
/* 5BC70 8005B070 01C27023 */  subu       $t6, $t6, $v0
/* 5BC74 8005B074 000E7080 */  sll        $t6, $t6, 2
/* 5BC78 8005B078 01C27021 */  addu       $t6, $t6, $v0
/* 5BC7C 8005B07C 000E7080 */  sll        $t6, $t6, 2
/* 5BC80 8005B080 01C27023 */  subu       $t6, $t6, $v0
/* 5BC84 8005B084 3C0F800F */  lui        $t7, %hi(gActors)
/* 5BC88 8005B088 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 5BC8C 8005B08C 000E70C0 */  sll        $t6, $t6, 3
/* 5BC90 8005B090 01CF1821 */  addu       $v1, $t6, $t7
/* 5BC94 8005B094 8C780080 */  lw         $t8, 0x80($v1)
/* 5BC98 8005B098 2401FFDF */  addiu      $at, $zero, -0x21
/* 5BC9C 8005B09C 37198000 */  ori        $t9, $t8, 0x8000
/* 5BCA0 8005B0A0 03217024 */  and        $t6, $t9, $at
/* 5BCA4 8005B0A4 3C01C080 */  lui        $at, 0xc080
/* 5BCA8 8005B0A8 8C6F0088 */  lw         $t7, 0x88($v1)
/* 5BCAC 8005B0AC 8C78008C */  lw         $t8, 0x8c($v1)
/* 5BCB0 8005B0B0 44815000 */  mtc1       $at, $f10
/* 5BCB4 8005B0B4 44803000 */  mtc1       $zero, $f6
/* 5BCB8 8005B0B8 AC790080 */  sw         $t9, 0x80($v1)
/* 5BCBC 8005B0BC AC6E0080 */  sw         $t6, 0x80($v1)
/* 5BCC0 8005B0C0 E4600130 */  swc1       $f0, 0x130($v1)
/* 5BCC4 8005B0C4 AC6F0184 */  sw         $t7, 0x184($v1)
/* 5BCC8 8005B0C8 AC780188 */  sw         $t8, 0x188($v1)
/* 5BCCC 8005B0CC E46A0140 */  swc1       $f10, 0x140($v1)
/* 5BCD0 8005B0D0 E4660144 */  swc1       $f6, 0x144($v1)
/* 5BCD4 8005B0D4 850D0088 */  lh         $t5, 0x88($t0)
/* 5BCD8 8005B0D8 84790088 */  lh         $t9, 0x88($v1)
/* 5BCDC 8005B0DC 846F008C */  lh         $t7, 0x8c($v1)
/* 5BCE0 8005B0E0 032D7023 */  subu       $t6, $t9, $t5
/* 5BCE4 8005B0E4 448E9000 */  mtc1       $t6, $f18
/* 5BCE8 8005B0E8 8C6D0090 */  lw         $t5, 0x90($v1)
/* 5BCEC 8005B0EC 46809120 */  cvt.s.w    $f4, $f18
/* 5BCF0 8005B0F0 3C014F80 */  lui        $at, 0x4f80
/* 5BCF4 8005B0F4 E4640134 */  swc1       $f4, 0x134($v1)
/* 5BCF8 8005B0F8 8518008C */  lh         $t8, 0x8c($t0)
/* 5BCFC 8005B0FC 00000000 */  nop
/* 5BD00 8005B100 01F8C823 */  subu       $t9, $t7, $t8
/* 5BD04 8005B104 44998000 */  mtc1       $t9, $f16
/* 5BD08 8005B108 00000000 */  nop
/* 5BD0C 8005B10C 46808220 */  cvt.s.w    $f8, $f16
/* 5BD10 8005B110 E4680138 */  swc1       $f8, 0x138($v1)
/* 5BD14 8005B114 8D0E0090 */  lw         $t6, 0x90($t0)
/* 5BD18 8005B118 00000000 */  nop
/* 5BD1C 8005B11C 01AE7823 */  subu       $t7, $t5, $t6
/* 5BD20 8005B120 448F5000 */  mtc1       $t7, $f10
/* 5BD24 8005B124 00000000 */  nop
/* 5BD28 8005B128 468051A0 */  cvt.s.w    $f6, $f10
/* 5BD2C 8005B12C E466013C */  swc1       $f6, 0x13c($v1)
/* 5BD30 8005B130 951800D2 */  lhu        $t8, 0xd2($t0)
/* 5BD34 8005B134 00000000 */  nop
/* 5BD38 8005B138 44989000 */  mtc1       $t8, $f18
/* 5BD3C 8005B13C 07010004 */  bgez       $t8, .L8005B150
/* 5BD40 8005B140 46809120 */   cvt.s.w   $f4, $f18
/* 5BD44 8005B144 44818000 */  mtc1       $at, $f16
/* 5BD48 8005B148 00000000 */  nop
/* 5BD4C 8005B14C 46102100 */  add.s      $f4, $f4, $f16
.L8005B150:
/* 5BD50 8005B150 E464014C */  swc1       $f4, 0x14c($v1)
.L8005B154:
/* 5BD54 8005B154 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5BD58 8005B158 8FB00020 */  lw         $s0, 0x20($sp)
/* 5BD5C 8005B15C 03E00008 */  jr         $ra
/* 5BD60 8005B160 27BD0068 */   addiu     $sp, $sp, 0x68
