glabel func_8001ACA8
/* 1B8A8 8001ACA8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1B8AC 8001ACAC AFA60048 */  sw         $a2, 0x48($sp)
/* 1B8B0 8001ACB0 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 1B8B4 8001ACB4 3401FFFF */  ori        $at, $zero, 0xffff
/* 1B8B8 8001ACB8 01C03025 */  or         $a2, $t6, $zero
/* 1B8BC 8001ACBC AFBF0024 */  sw         $ra, 0x24($sp)
/* 1B8C0 8001ACC0 AFB20020 */  sw         $s2, 0x20($sp)
/* 1B8C4 8001ACC4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1B8C8 8001ACC8 AFB00018 */  sw         $s0, 0x18($sp)
/* 1B8CC 8001ACCC AFA40040 */  sw         $a0, 0x40($sp)
/* 1B8D0 8001ACD0 15C10005 */  bne        $t6, $at, .L8001ACE8
/* 1B8D4 8001ACD4 AFA50044 */   sw        $a1, 0x44($sp)
/* 1B8D8 8001ACD8 3C028018 */  lui        $v0, %hi(D_80178150)
/* 1B8DC 8001ACDC 94428150 */  lhu        $v0, %lo(D_80178150)($v0)
/* 1B8E0 8001ACE0 10000007 */  b          .L8001AD00
/* 1B8E4 8001ACE4 2401003C */   addiu     $at, $zero, 0x3c
.L8001ACE8:
/* 1B8E8 8001ACE8 00067840 */  sll        $t7, $a2, 1
/* 1B8EC 8001ACEC 3C02800C */  lui        $v0, %hi(gTimeRecords)
/* 1B8F0 8001ACF0 004F1021 */  addu       $v0, $v0, $t7
/* 1B8F4 8001ACF4 94424F28 */  lhu        $v0, %lo(gTimeRecords)($v0)
/* 1B8F8 8001ACF8 00000000 */  nop
/* 1B8FC 8001ACFC 2401003C */  addiu      $at, $zero, 0x3c
.L8001AD00:
/* 1B900 8001AD00 0041001A */  div        $zero, $v0, $at
/* 1B904 8001AD04 24040003 */  addiu      $a0, $zero, 3
/* 1B908 8001AD08 87B10046 */  lh         $s1, 0x46($sp)
/* 1B90C 8001AD0C 97B00042 */  lhu        $s0, 0x42($sp)
/* 1B910 8001AD10 00112C00 */  sll        $a1, $s1, 0x10
/* 1B914 8001AD14 3C06800D */  lui        $a2, %hi(D_800C9520)
/* 1B918 8001AD18 00409025 */  or         $s2, $v0, $zero
/* 1B91C 8001AD1C 24C69520 */  addiu      $a2, $a2, %lo(D_800C9520)
/* 1B920 8001AD20 00003825 */  or         $a3, $zero, $zero
/* 1B924 8001AD24 00001810 */  mfhi       $v1
/* 1B928 8001AD28 0003C140 */  sll        $t8, $v1, 5
/* 1B92C 8001AD2C 0303C023 */  subu       $t8, $t8, $v1
/* 1B930 8001AD30 0018C080 */  sll        $t8, $t8, 2
/* 1B934 8001AD34 0303C021 */  addu       $t8, $t8, $v1
/* 1B938 8001AD38 0018C080 */  sll        $t8, $t8, 2
/* 1B93C 8001AD3C 0304001A */  div        $zero, $t8, $a0
/* 1B940 8001AD40 14800002 */  bnez       $a0, .L8001AD4C
/* 1B944 8001AD44 00000000 */   nop
/* 1B948 8001AD48 0007000D */  break      7
.L8001AD4C:
/* 1B94C 8001AD4C 2401FFFF */   addiu     $at, $zero, -1
/* 1B950 8001AD50 14810004 */  bne        $a0, $at, .L8001AD64
/* 1B954 8001AD54 3C018000 */   lui       $at, 0x8000
/* 1B958 8001AD58 17010002 */  bne        $t8, $at, .L8001AD64
/* 1B95C 8001AD5C 00000000 */   nop
/* 1B960 8001AD60 0006000D */  break      6
.L8001AD64:
/* 1B964 8001AD64 24010064 */   addiu     $at, $zero, 0x64
/* 1B968 8001AD68 0005C403 */  sra        $t8, $a1, 0x10
/* 1B96C 8001AD6C 03002825 */  or         $a1, $t8, $zero
/* 1B970 8001AD70 0000C812 */  mflo       $t9
/* 1B974 8001AD74 00000000 */  nop
/* 1B978 8001AD78 00000000 */  nop
/* 1B97C 8001AD7C 0321001A */  div        $zero, $t9, $at
/* 1B980 8001AD80 00004810 */  mfhi       $t1
/* 1B984 8001AD84 29210032 */  slti       $at, $t1, 0x32
/* 1B988 8001AD88 10200011 */  beqz       $at, .L8001ADD0
/* 1B98C 8001AD8C 00000000 */   nop
/* 1B990 8001AD90 00035080 */  sll        $t2, $v1, 2
/* 1B994 8001AD94 01435021 */  addu       $t2, $t2, $v1
/* 1B998 8001AD98 0144001A */  div        $zero, $t2, $a0
/* 1B99C 8001AD9C 14800002 */  bnez       $a0, .L8001ADA8
/* 1B9A0 8001ADA0 00000000 */   nop
/* 1B9A4 8001ADA4 0007000D */  break      7
.L8001ADA8:
/* 1B9A8 8001ADA8 2401FFFF */   addiu     $at, $zero, -1
/* 1B9AC 8001ADAC 14810004 */  bne        $a0, $at, .L8001ADC0
/* 1B9B0 8001ADB0 3C018000 */   lui       $at, 0x8000
/* 1B9B4 8001ADB4 15410002 */  bne        $t2, $at, .L8001ADC0
/* 1B9B8 8001ADB8 00000000 */   nop
/* 1B9BC 8001ADBC 0006000D */  break      6
.L8001ADC0:
/* 1B9C0 8001ADC0 00001012 */   mflo      $v0
/* 1B9C4 8001ADC4 304BFFFF */  andi       $t3, $v0, 0xffff
/* 1B9C8 8001ADC8 10000011 */  b          .L8001AE10
/* 1B9CC 8001ADCC 01601025 */   or        $v0, $t3, $zero
.L8001ADD0:
/* 1B9D0 8001ADD0 00036080 */  sll        $t4, $v1, 2
/* 1B9D4 8001ADD4 01836021 */  addu       $t4, $t4, $v1
/* 1B9D8 8001ADD8 0184001A */  div        $zero, $t4, $a0
/* 1B9DC 8001ADDC 14800002 */  bnez       $a0, .L8001ADE8
/* 1B9E0 8001ADE0 00000000 */   nop
/* 1B9E4 8001ADE4 0007000D */  break      7
.L8001ADE8:
/* 1B9E8 8001ADE8 2401FFFF */   addiu     $at, $zero, -1
/* 1B9EC 8001ADEC 14810004 */  bne        $a0, $at, .L8001AE00
/* 1B9F0 8001ADF0 3C018000 */   lui       $at, 0x8000
/* 1B9F4 8001ADF4 15810002 */  bne        $t4, $at, .L8001AE00
/* 1B9F8 8001ADF8 00000000 */   nop
/* 1B9FC 8001ADFC 0006000D */  break      6
.L8001AE00:
/* 1BA00 8001AE00 00001012 */   mflo      $v0
/* 1BA04 8001AE04 24420001 */  addiu      $v0, $v0, 1
/* 1BA08 8001AE08 304DFFFF */  andi       $t5, $v0, 0xffff
/* 1BA0C 8001AE0C 01A01025 */  or         $v0, $t5, $zero
.L8001AE10:
/* 1BA10 8001AE10 34018CA0 */  ori        $at, $zero, 0x8ca0
/* 1BA14 8001AE14 16410009 */  bne        $s2, $at, .L8001AE3C
/* 1BA18 8001AE18 26040001 */   addiu     $a0, $s0, 1
/* 1BA1C 8001AE1C 87A40042 */  lh         $a0, 0x42($sp)
/* 1BA20 8001AE20 87A50046 */  lh         $a1, 0x46($sp)
/* 1BA24 8001AE24 3C06800D */  lui        $a2, %hi(D_800C9554)
/* 1BA28 8001AE28 24C69554 */  addiu      $a2, $a2, %lo(D_800C9554)
/* 1BA2C 8001AE2C 0C020E04 */  jal        func_80083810
/* 1BA30 8001AE30 00003825 */   or        $a3, $zero, $zero
/* 1BA34 8001AE34 1000006E */  b          .L8001AFF0
/* 1BA38 8001AE38 8FBF0024 */   lw        $ra, 0x24($sp)
.L8001AE3C:
/* 1BA3C 8001AE3C 00047400 */  sll        $t6, $a0, 0x10
/* 1BA40 8001AE40 000E2403 */  sra        $a0, $t6, 0x10
/* 1BA44 8001AE44 0C020E04 */  jal        func_80083810
/* 1BA48 8001AE48 A7A2003C */   sh        $v0, 0x3c($sp)
/* 1BA4C 8001AE4C 97A3003C */  lhu        $v1, 0x3c($sp)
/* 1BA50 8001AE50 2401000A */  addiu      $at, $zero, 0xa
/* 1BA54 8001AE54 0061001A */  div        $zero, $v1, $at
/* 1BA58 8001AE58 26040005 */  addiu      $a0, $s0, 5
/* 1BA5C 8001AE5C 00112C00 */  sll        $a1, $s1, 0x10
/* 1BA60 8001AE60 00055403 */  sra        $t2, $a1, 0x10
/* 1BA64 8001AE64 0004CC00 */  sll        $t9, $a0, 0x10
/* 1BA68 8001AE68 00192403 */  sra        $a0, $t9, 0x10
/* 1BA6C 8001AE6C 01402825 */  or         $a1, $t2, $zero
/* 1BA70 8001AE70 00003825 */  or         $a3, $zero, $zero
/* 1BA74 8001AE74 AFA3002C */  sw         $v1, 0x2c($sp)
/* 1BA78 8001AE78 00003012 */  mflo       $a2
/* 1BA7C 8001AE7C 24C60051 */  addiu      $a2, $a2, 0x51
/* 1BA80 8001AE80 00065C00 */  sll        $t3, $a2, 0x10
/* 1BA84 8001AE84 0C020DE7 */  jal        func_8008379C
/* 1BA88 8001AE88 000B3403 */   sra       $a2, $t3, 0x10
/* 1BA8C 8001AE8C 8FA3002C */  lw         $v1, 0x2c($sp)
/* 1BA90 8001AE90 2401000A */  addiu      $at, $zero, 0xa
/* 1BA94 8001AE94 0061001A */  div        $zero, $v1, $at
/* 1BA98 8001AE98 26040006 */  addiu      $a0, $s0, 6
/* 1BA9C 8001AE9C 00112C00 */  sll        $a1, $s1, 0x10
/* 1BAA0 8001AEA0 00057C03 */  sra        $t7, $a1, 0x10
/* 1BAA4 8001AEA4 00046C00 */  sll        $t5, $a0, 0x10
/* 1BAA8 8001AEA8 000D2403 */  sra        $a0, $t5, 0x10
/* 1BAAC 8001AEAC 01E02825 */  or         $a1, $t7, $zero
/* 1BAB0 8001AEB0 00003825 */  or         $a3, $zero, $zero
/* 1BAB4 8001AEB4 00003010 */  mfhi       $a2
/* 1BAB8 8001AEB8 24C60051 */  addiu      $a2, $a2, 0x51
/* 1BABC 8001AEBC 0006C400 */  sll        $t8, $a2, 0x10
/* 1BAC0 8001AEC0 0C020DE7 */  jal        func_8008379C
/* 1BAC4 8001AEC4 00183403 */   sra       $a2, $t8, 0x10
/* 1BAC8 8001AEC8 2408003C */  addiu      $t0, $zero, 0x3c
/* 1BACC 8001AECC 0248001A */  div        $zero, $s2, $t0
/* 1BAD0 8001AED0 15000002 */  bnez       $t0, .L8001AEDC
/* 1BAD4 8001AED4 00000000 */   nop
/* 1BAD8 8001AED8 0007000D */  break      7
.L8001AEDC:
/* 1BADC 8001AEDC 2401FFFF */   addiu     $at, $zero, -1
/* 1BAE0 8001AEE0 15010004 */  bne        $t0, $at, .L8001AEF4
/* 1BAE4 8001AEE4 3C018000 */   lui       $at, 0x8000
/* 1BAE8 8001AEE8 16410002 */  bne        $s2, $at, .L8001AEF4
/* 1BAEC 8001AEEC 00000000 */   nop
/* 1BAF0 8001AEF0 0006000D */  break      6
.L8001AEF4:
/* 1BAF4 8001AEF4 26040002 */   addiu     $a0, $s0, 2
/* 1BAF8 8001AEF8 00045400 */  sll        $t2, $a0, 0x10
/* 1BAFC 8001AEFC 00112C00 */  sll        $a1, $s1, 0x10
/* 1BB00 8001AF00 00056403 */  sra        $t4, $a1, 0x10
/* 1BB04 8001AF04 000A5C03 */  sra        $t3, $t2, 0x10
/* 1BB08 8001AF08 01602025 */  or         $a0, $t3, $zero
/* 1BB0C 8001AF0C 01802825 */  or         $a1, $t4, $zero
/* 1BB10 8001AF10 00003825 */  or         $a3, $zero, $zero
/* 1BB14 8001AF14 00001012 */  mflo       $v0
/* 1BB18 8001AF18 3049FFFF */  andi       $t1, $v0, 0xffff
/* 1BB1C 8001AF1C 01209025 */  or         $s2, $t1, $zero
/* 1BB20 8001AF20 0128001A */  div        $zero, $t1, $t0
/* 1BB24 8001AF24 01201025 */  or         $v0, $t1, $zero
/* 1BB28 8001AF28 15000002 */  bnez       $t0, .L8001AF34
/* 1BB2C 8001AF2C 00000000 */   nop
/* 1BB30 8001AF30 0007000D */  break      7
.L8001AF34:
/* 1BB34 8001AF34 2401FFFF */   addiu     $at, $zero, -1
/* 1BB38 8001AF38 15010004 */  bne        $t0, $at, .L8001AF4C
/* 1BB3C 8001AF3C 3C018000 */   lui       $at, 0x8000
/* 1BB40 8001AF40 16410002 */  bne        $s2, $at, .L8001AF4C
/* 1BB44 8001AF44 00000000 */   nop
/* 1BB48 8001AF48 0006000D */  break      6
.L8001AF4C:
/* 1BB4C 8001AF4C 2401000A */   addiu     $at, $zero, 0xa
/* 1BB50 8001AF50 00001810 */  mfhi       $v1
/* 1BB54 8001AF54 306DFFFF */  andi       $t5, $v1, 0xffff
/* 1BB58 8001AF58 01A01825 */  or         $v1, $t5, $zero
/* 1BB5C 8001AF5C 01A1001A */  div        $zero, $t5, $at
/* 1BB60 8001AF60 AFAD002C */  sw         $t5, 0x2c($sp)
/* 1BB64 8001AF64 00003012 */  mflo       $a2
/* 1BB68 8001AF68 24C60051 */  addiu      $a2, $a2, 0x51
/* 1BB6C 8001AF6C 00067400 */  sll        $t6, $a2, 0x10
/* 1BB70 8001AF70 0C020DE7 */  jal        func_8008379C
/* 1BB74 8001AF74 000E3403 */   sra       $a2, $t6, 0x10
/* 1BB78 8001AF78 8FA3002C */  lw         $v1, 0x2c($sp)
/* 1BB7C 8001AF7C 2401000A */  addiu      $at, $zero, 0xa
/* 1BB80 8001AF80 0061001A */  div        $zero, $v1, $at
/* 1BB84 8001AF84 26040003 */  addiu      $a0, $s0, 3
/* 1BB88 8001AF88 00112C00 */  sll        $a1, $s1, 0x10
/* 1BB8C 8001AF8C 00054C03 */  sra        $t1, $a1, 0x10
/* 1BB90 8001AF90 0004C400 */  sll        $t8, $a0, 0x10
/* 1BB94 8001AF94 00182403 */  sra        $a0, $t8, 0x10
/* 1BB98 8001AF98 01202825 */  or         $a1, $t1, $zero
/* 1BB9C 8001AF9C 00003825 */  or         $a3, $zero, $zero
/* 1BBA0 8001AFA0 00003010 */  mfhi       $a2
/* 1BBA4 8001AFA4 24C60051 */  addiu      $a2, $a2, 0x51
/* 1BBA8 8001AFA8 00065400 */  sll        $t2, $a2, 0x10
/* 1BBAC 8001AFAC 0C020DE7 */  jal        func_8008379C
/* 1BBB0 8001AFB0 000A3403 */   sra       $a2, $t2, 0x10
/* 1BBB4 8001AFB4 2401003C */  addiu      $at, $zero, 0x3c
/* 1BBB8 8001AFB8 0241001A */  div        $zero, $s2, $at
/* 1BBBC 8001AFBC 00102400 */  sll        $a0, $s0, 0x10
/* 1BBC0 8001AFC0 00112C00 */  sll        $a1, $s1, 0x10
/* 1BBC4 8001AFC4 00057403 */  sra        $t6, $a1, 0x10
/* 1BBC8 8001AFC8 00046C03 */  sra        $t5, $a0, 0x10
/* 1BBCC 8001AFCC 01A02025 */  or         $a0, $t5, $zero
/* 1BBD0 8001AFD0 01C02825 */  or         $a1, $t6, $zero
/* 1BBD4 8001AFD4 00003825 */  or         $a3, $zero, $zero
/* 1BBD8 8001AFD8 00006012 */  mflo       $t4
/* 1BBDC 8001AFDC 25860051 */  addiu      $a2, $t4, 0x51
/* 1BBE0 8001AFE0 00067C00 */  sll        $t7, $a2, 0x10
/* 1BBE4 8001AFE4 0C020DE7 */  jal        func_8008379C
/* 1BBE8 8001AFE8 000F3403 */   sra       $a2, $t7, 0x10
/* 1BBEC 8001AFEC 8FBF0024 */  lw         $ra, 0x24($sp)
.L8001AFF0:
/* 1BBF0 8001AFF0 8FB00018 */  lw         $s0, 0x18($sp)
/* 1BBF4 8001AFF4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1BBF8 8001AFF8 8FB20020 */  lw         $s2, 0x20($sp)
/* 1BBFC 8001AFFC 03E00008 */  jr         $ra
/* 1BC00 8001B000 27BD0040 */   addiu     $sp, $sp, 0x40
